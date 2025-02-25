package command

import (
	"context"
	"fmt"
	"os"
	"strings"

	"github.com/hashicorp/terraform/addrs"
	"github.com/hashicorp/terraform/command/clistate"
	"github.com/hashicorp/terraform/states"
	"github.com/hashicorp/terraform/terraform"
	"github.com/hashicorp/terraform-plugin-sdk/tfdiags"
)

// TaintCommand is a cli.Command implementation that manually taints
// a resource, marking it for recreation.
type TaintCommand struct {
	Meta
}

func (c *TaintCommand) Run(args []string) int {
	args = c.Meta.process(args)
	var module string
	var allowMissing bool
	cmdFlags := c.Meta.ignoreRemoteVersionFlagSet("taint")
	cmdFlags.BoolVar(&allowMissing, "allow-missing", false, "module")
	cmdFlags.StringVar(&c.Meta.backupPath, "backup", "", "path")
	cmdFlags.BoolVar(&c.Meta.stateLock, "lock", true, "lock state")
	cmdFlags.DurationVar(&c.Meta.stateLockTimeout, "lock-timeout", 0, "lock timeout")
	cmdFlags.StringVar(&module, "module", "", "module")
	cmdFlags.StringVar(&c.Meta.statePath, "state", "", "path")
	cmdFlags.StringVar(&c.Meta.stateOutPath, "state-out", "", "path")
	cmdFlags.Usage = func() { c.Ui.Error(c.Help()) }
	if err := cmdFlags.Parse(args); err != nil {
		c.Ui.Error(fmt.Sprintf("Error parsing command-line flags: %s\n", err.Error()))
		return 1
	}

	var diags tfdiags.Diagnostics

	// Require the one argument for the resource to taint
	args = cmdFlags.Args()
	if len(args) != 1 {
		c.Ui.Error("The taint command expects exactly one argument.")
		cmdFlags.Usage()
		return 1
	}

	if module != "" {
		c.Ui.Error("The -module option is no longer used. Instead, include the module path in the main resource address, like \"module.foo.module.bar.null_resource.baz\".")
		return 1
	}

	addr, addrDiags := addrs.ParseAbsResourceInstanceStr(args[0])
	diags = diags.Append(addrDiags)
	if addrDiags.HasErrors() {
		c.showDiagnostics(diags)
		return 1
	}

	if addr.Resource.Resource.Mode != addrs.ManagedResourceMode {
		c.Ui.Error(fmt.Sprintf("Resource instance %s cannot be tainted", addr))
		return 1
	}

	// Load the config and check the core version requirements are satisfied
	loader, err := c.initConfigLoader()
	if err != nil {
		diags = diags.Append(err)
		c.showDiagnostics(diags)
		return 1
	}

	pwd, err := os.Getwd()
	if err != nil {
		c.Ui.Error(fmt.Sprintf("Error getting pwd: %s", err))
		return 1
	}

	config, configDiags := loader.LoadConfig(pwd)
	diags = diags.Append(configDiags)
	if diags.HasErrors() {
		c.showDiagnostics(diags)
		return 1
	}

	versionDiags := terraform.CheckCoreVersionRequirements(config)
	diags = diags.Append(versionDiags)
	if diags.HasErrors() {
		c.showDiagnostics(diags)
		return 1
	}

	// Load the backend
	b, backendDiags := c.Backend(nil)
	diags = diags.Append(backendDiags)
	if backendDiags.HasErrors() {
		c.showDiagnostics(diags)
		return 1
	}

	// Determine the workspace name
	workspace, err := c.Workspace()
	if err != nil {
		c.Ui.Error(fmt.Sprintf("Error selecting workspace: %s", err))
		return 1
	}

	// Check remote Terraform version is compatible
	remoteVersionDiags := c.remoteBackendVersionCheck(b, workspace)
	diags = diags.Append(remoteVersionDiags)
	c.showDiagnostics(diags)
	if diags.HasErrors() {
		return 1
	}

	// Get the state
	stateMgr, err := b.StateMgr(workspace)
	if err != nil {
		c.Ui.Error(fmt.Sprintf("Failed to load state: %s", err))
		return 1
	}

	if c.stateLock {
		stateLocker := clistate.NewLocker(context.Background(), c.stateLockTimeout, c.Ui, c.Colorize())
		if err := stateLocker.Lock(stateMgr, "taint"); err != nil {
			c.Ui.Error(fmt.Sprintf("Error locking state: %s", err))
			return 1
		}
		defer stateLocker.Unlock(nil)
	}

	if err := stateMgr.RefreshState(); err != nil {
		c.Ui.Error(fmt.Sprintf("Failed to load state: %s", err))
		return 1
	}

	// Get the actual state structure
	state := stateMgr.State()
	if state.Empty() {
		if allowMissing {
			return c.allowMissingExit(addr)
		}

		diags = diags.Append(tfdiags.Sourceless(
			tfdiags.Error,
			"No such resource instance",
			"The state currently contains no resource instances whatsoever. This may occur if the configuration has never been applied or if it has recently been destroyed.",
		))
		c.showDiagnostics(diags)
		return 1
	}

	ss := state.SyncWrapper()

	// Get the resource and instance we're going to taint
	rs := ss.Resource(addr.ContainingResource())
	is := ss.ResourceInstance(addr)
	if is == nil {
		if allowMissing {
			return c.allowMissingExit(addr)
		}

		diags = diags.Append(tfdiags.Sourceless(
			tfdiags.Error,
			"No such resource instance",
			fmt.Sprintf("There is no resource instance in the state with the address %s. If the resource configuration has just been added, you must run \"terraform apply\" once to create the corresponding instance(s) before they can be tainted.", addr),
		))
		c.showDiagnostics(diags)
		return 1
	}

	obj := is.Current
	if obj == nil {
		if len(is.Deposed) != 0 {
			diags = diags.Append(tfdiags.Sourceless(
				tfdiags.Error,
				"No such resource instance",
				fmt.Sprintf("Resource instance %s is currently part-way through a create_before_destroy replacement action. Run \"terraform apply\" to complete its replacement before tainting it.", addr),
			))
		} else {
			// Don't know why we're here, but we'll produce a generic error message anyway.
			diags = diags.Append(tfdiags.Sourceless(
				tfdiags.Error,
				"No such resource instance",
				fmt.Sprintf("Resource instance %s does not currently have a remote object associated with it, so it cannot be tainted.", addr),
			))
		}
		c.showDiagnostics(diags)
		return 1
	}

	obj.Status = states.ObjectTainted
	ss.SetResourceInstanceCurrent(addr, obj, rs.ProviderConfig)

	if err := stateMgr.WriteState(state); err != nil {
		c.Ui.Error(fmt.Sprintf("Error writing state file: %s", err))
		return 1
	}
	if err := stateMgr.PersistState(); err != nil {
		c.Ui.Error(fmt.Sprintf("Error writing state file: %s", err))
		return 1
	}

	c.Ui.Output(fmt.Sprintf("Resource instance %s has been marked as tainted.", addr))
	return 0
}

func (c *TaintCommand) Help() string {
	helpText := `
Usage: terraform taint [options] <address>

  Terraform uses the term "tainted" to describe a resource instance
  which may not be fully functional, either because its creation
  partially failed or because you've manually marked it as such using
  this command.

  This will not modify your infrastructure directly, but subsequent
  Terraform plans will include actions to destroy the remote object
  and create a new object to replace it.

  You can remove the "taint" state from a resource instance using
  the "terraform untaint" command.

  The address is in the usual resource address syntax, such as:
    aws_instance.foo
    aws_instance.bar[1]
    module.foo.module.bar.aws_instance.baz

  Use your shell's quoting or escaping syntax to ensure that the
  address will reach Terraform correctly, without any special
  interpretation.

Options:

  -allow-missing          If specified, the command will succeed (exit code 0)
                          even if the resource is missing.

  -backup=path            Path to backup the existing state file before
                          modifying. Defaults to the "-state-out" path with
                          ".backup" extension. Set to "-" to disable backup.

  -lock=true              Lock the state file when locking is supported.

  -lock-timeout=0s        Duration to retry a state lock.

  -state=path             Path to read and save state (unless state-out
                          is specified). Defaults to "terraform.tfstate".

  -state-out=path         Path to write updated state file. By default, the
                          "-state" path will be used.

  -ignore-remote-version  Continue even if remote and local Terraform versions
                          differ. This may result in an unusable workspace, and
                          should be used with extreme caution.

`
	return strings.TrimSpace(helpText)
}

func (c *TaintCommand) Synopsis() string {
	return "Mark a resource instance as not fully functional"
}

func (c *TaintCommand) allowMissingExit(name addrs.AbsResourceInstance) int {
	c.showDiagnostics(tfdiags.Sourceless(
		tfdiags.Warning,
		"No such resource instance",
		"Resource instance %s was not found, but this is not an error because -allow-missing was set.",
	))
	return 0
}
