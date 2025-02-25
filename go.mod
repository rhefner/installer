module github.com/openshift/installer

go 1.17

require (
	cloud.google.com/go v0.81.0
	github.com/AlecAivazis/survey/v2 v2.2.12
	github.com/Azure/azure-sdk-for-go v51.2.0+incompatible
	github.com/Azure/go-autorest/autorest v0.11.18
	github.com/Azure/go-autorest/autorest/adal v0.9.13
	github.com/Azure/go-autorest/autorest/azure/auth v0.4.1
	github.com/Azure/go-autorest/autorest/to v0.4.0
	github.com/IBM-Cloud/bluemix-go v0.0.0-20210611051827-cdc80c935c05
	github.com/IBM-Cloud/terraform-provider-ibm v1.26.2
	github.com/IBM/go-sdk-core/v5 v5.4.3
	github.com/IBM/networking-go-sdk v0.14.0
	github.com/IBM/platform-services-go-sdk v0.18.16
	github.com/IBM/vpc-go-sdk v1.0.1
	github.com/aliyun/alibaba-cloud-sdk-go v1.61.1264
	github.com/aliyun/aliyun-oss-go-sdk v2.1.8+incompatible
	github.com/aliyun/terraform-provider-alicloud v1.153.0
	github.com/apparentlymart/go-cidr v1.1.0
	github.com/awalterschulze/gographviz v0.0.0-20190522210029-fa59802746ab
	github.com/aws/aws-sdk-go v1.37.4
	github.com/clarketm/json v1.14.1
	github.com/containers/image v3.0.2+incompatible
	github.com/coreos/ignition/v2 v2.9.0
	github.com/coreos/stream-metadata-go v0.1.3
	github.com/dmacvicar/terraform-provider-libvirt v0.6.4-0.20201216193629-2b60d7626ff8
	github.com/ghodss/yaml v1.0.1-0.20190212211648-25d852aebe32
	github.com/go-playground/validator/v10 v10.2.0
	github.com/golang/mock v1.6.0
	github.com/golang/protobuf v1.5.2
	github.com/google/go-cmp v0.5.6
	github.com/google/uuid v1.2.0
	github.com/gophercloud/gophercloud v0.22.0
	github.com/gophercloud/utils v0.0.0-20210720165645-8a3ad2ad9e70
	github.com/h2non/filetype v1.0.12
	github.com/hashicorp/aws-sdk-go-base v0.7.0 // indirect
	github.com/hashicorp/go-azure-helpers v0.16.5
	github.com/hashicorp/go-plugin v1.4.0
	github.com/hashicorp/go-version v1.3.0
	github.com/hashicorp/logutils v1.0.0
	github.com/hashicorp/terraform v0.14.6
	github.com/hashicorp/terraform-plugin-sdk v1.16.0
	github.com/hashicorp/terraform-provider-google v1.20.1-0.20200922000057-78da461b151a
	github.com/hashicorp/terraform-provider-vsphere v1.24.3
	github.com/libvirt/libvirt-go v5.10.0+incompatible
	github.com/metal3-io/baremetal-operator v0.0.0-20220128094204-28771f489634
	github.com/metal3-io/baremetal-operator/apis v0.0.0
	github.com/metal3-io/baremetal-operator/pkg/hardwareutils v0.0.0
	github.com/mitchellh/cli v1.1.2
	github.com/openshift-metal3/terraform-provider-ironic v0.2.7
	github.com/openshift/api v0.0.0-20220124143425-d74727069f6f
	github.com/openshift/client-go v0.0.0-20211025111749-96ca2abfc56c
	github.com/openshift/cloud-credential-operator v0.0.0-20200316201045-d10080b52c9e
	github.com/openshift/cluster-api-provider-baremetal v0.0.0-20210924143856-c2d3ece4da38
	github.com/openshift/cluster-api-provider-ibmcloud v0.0.0-20211008100740-4d7907adbd6b
	github.com/openshift/cluster-api-provider-libvirt v0.2.1-0.20191219173431-2336783d4603
	github.com/openshift/cluster-api-provider-ovirt v0.1.1-0.20211111151530-06177b773958
	github.com/openshift/library-go v0.0.0-20210811133500-5e31383de2a7
	github.com/openshift/machine-config-operator v0.0.0
	github.com/ovirt/go-ovirt v0.0.0-20210308100159-ac0bcbc88d7c
	github.com/ovirt/terraform-provider-ovirt v0.99.1-0.20211019085223-db1ac552ec57
	github.com/pborman/uuid v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/pkg/sftp v1.10.1
	github.com/prometheus/client_golang v1.11.0
	github.com/prometheus/common v0.28.0
	github.com/shurcooL/vfsgen v0.0.0-20181202132449-6a9ea43bcacd
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/cobra v1.2.1
	github.com/stretchr/testify v1.7.0
	github.com/terraform-provider-openstack/terraform-provider-openstack v1.37.0
	github.com/terraform-providers/terraform-provider-aws v1.60.1-0.20211207215258-c9b9d0b9dc46
	github.com/terraform-providers/terraform-provider-azurerm v1.44.1-0.20200911233120-57b2bfc9d42c
	github.com/terraform-providers/terraform-provider-azurestack v0.10.0
	github.com/terraform-providers/terraform-provider-ignition/v2 v2.1.0
	github.com/terraform-providers/terraform-provider-local v1.4.0
	github.com/terraform-providers/terraform-provider-random v1.3.2-0.20190925210718-83518d96ae4f
	github.com/ulikunitz/xz v0.5.8
	github.com/vincent-petithory/dataurl v0.0.0-20191104211930-d1553a71de50
	github.com/vmware/govmomi v0.24.0
	github.com/zclconf/go-cty v1.8.1
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5
	golang.org/x/lint v0.0.0-20210508222113-6edffad5e616
	golang.org/x/net v0.0.0-20210825183410-e898025ed96a
	golang.org/x/oauth2 v0.0.0-20210819190943-2bc19b11175f
	golang.org/x/sys v0.0.0-20211029165221-6e7872819dc8
	google.golang.org/api v0.44.0
	google.golang.org/genproto v0.0.0-20210831024726-fe130286e0e2
	google.golang.org/grpc v1.40.0
	gopkg.in/ini.v1 v1.66.2
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.23.0
	k8s.io/apiextensions-apiserver v0.23.0
	k8s.io/apimachinery v0.23.0
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/klog v1.0.0
	k8s.io/klog/v2 v2.30.0
	k8s.io/utils v0.0.0-20210930125809-cb0fa318a74b
	sigs.k8s.io/cluster-api-provider-aws v0.0.0
	sigs.k8s.io/cluster-api-provider-openstack v0.0.0
	sigs.k8s.io/controller-tools v0.7.0
)

require (
	cloud.google.com/go/bigtable v1.5.0 // indirect
	cloud.google.com/go/storage v1.11.0 // indirect
	github.com/Azure/go-autorest v14.2.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest/azure/cli v0.4.2 // indirect
	github.com/Azure/go-autorest/autorest/date v0.3.0 // indirect
	github.com/Azure/go-autorest/autorest/validation v0.3.1 // indirect
	github.com/Azure/go-autorest/logger v0.2.1 // indirect
	github.com/Azure/go-autorest/tracing v0.6.0 // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20200615164410-66371956d46c // indirect
	github.com/BurntSushi/toml v0.3.1 // indirect
	github.com/ChrisTrenkamp/goxpath v0.0.0-20190607011252-c5096ec8773d // indirect
	github.com/IBM-Cloud/power-go-client v1.0.55 // indirect
	github.com/IBM/apigateway-go-sdk v0.0.0-20210714141226-a5d5d49caaca // indirect
	github.com/IBM/appconfiguration-go-admin-sdk v0.1.0 // indirect
	github.com/IBM/container-registry-go-sdk v0.0.13 // indirect
	github.com/IBM/go-sdk-core v1.1.0 // indirect
	github.com/IBM/go-sdk-core/v3 v3.3.1 // indirect
	github.com/IBM/go-sdk-core/v4 v4.10.0 // indirect
	github.com/IBM/ibm-cos-sdk-go v1.7.0 // indirect
	github.com/IBM/ibm-cos-sdk-go-config v1.2.0 // indirect
	github.com/IBM/keyprotect-go-client v0.7.0 // indirect
	github.com/IBM/push-notifications-go-sdk v0.0.0-20210310100607-5790b96c47f5 // indirect
	github.com/IBM/schematics-go-sdk v0.0.2 // indirect
	github.com/IBM/secrets-manager-go-sdk v0.1.19 // indirect
	github.com/Masterminds/goutils v1.1.0 // indirect
	github.com/Masterminds/semver v1.5.0 // indirect
	github.com/Masterminds/sprig v2.22.0+incompatible // indirect
	github.com/Netflix/go-expect v0.0.0-20190729225929-0e00d9168667 // indirect
	github.com/PaesslerAG/gval v1.0.0 // indirect
	github.com/PaesslerAG/jsonpath v0.1.1 // indirect
	github.com/PuerkitoBio/purell v1.1.1 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/ScaleFT/sshkeys v0.0.0-20200327173127-6142f742bca5 // indirect
	github.com/Shopify/sarama v1.27.2 // indirect
	github.com/agext/levenshtein v1.2.3 // indirect
	github.com/alibabacloud-go/cs-20151215/v2 v2.4.4 // indirect
	github.com/alibabacloud-go/darabonba-openapi v0.1.5 // indirect
	github.com/alibabacloud-go/debug v0.0.0-20190504072949-9472017b5c68 // indirect
	github.com/alibabacloud-go/endpoint-util v1.1.0 // indirect
	github.com/alibabacloud-go/openapi-util v0.0.7 // indirect
	github.com/alibabacloud-go/tea v1.1.17 // indirect
	github.com/alibabacloud-go/tea-roa v1.3.0 // indirect
	github.com/alibabacloud-go/tea-roa-utils v1.1.5 // indirect
	github.com/alibabacloud-go/tea-rpc v1.2.0 // indirect
	github.com/alibabacloud-go/tea-rpc-utils v1.1.2 // indirect
	github.com/alibabacloud-go/tea-utils v1.3.9 // indirect
	github.com/aliyun/aliyun-datahub-sdk-go v0.1.5 // indirect
	github.com/aliyun/aliyun-log-go-sdk v0.1.27 // indirect
	github.com/aliyun/aliyun-mns-go-sdk v0.0.0-20210305050620-d1b5875bda58 // indirect
	github.com/aliyun/aliyun-tablestore-go-sdk v4.1.3+incompatible // indirect
	github.com/aliyun/credentials-go v1.1.2 // indirect
	github.com/aliyun/fc-go-sdk v0.0.0-20200925033337-c013428cbe21 // indirect
	github.com/andybalholm/brotli v1.0.1 // indirect
	github.com/antchfx/xpath v1.1.2 // indirect
	github.com/apache/openwhisk-client-go v0.0.0-20200201143223-a804fb82d105 // indirect
	github.com/apparentlymart/go-textseg/v12 v12.0.0 // indirect
	github.com/apparentlymart/go-textseg/v13 v13.0.0 // indirect
	github.com/apparentlymart/go-versions v1.0.1 // indirect
	github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2 // indirect
	github.com/armon/go-radix v1.0.0 // indirect
	github.com/asaskevich/govalidator v0.0.0-20210307081110-f21760c49a8d // indirect
	github.com/beevik/etree v1.1.0 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/bgentry/go-netrc v0.0.0-20140422174119-9fd32a8b3d3d // indirect
	github.com/bgentry/speakeasy v0.1.0 // indirect
	github.com/bmatcuk/doublestar v1.3.2 // indirect
	github.com/btubbs/datetime v0.1.0 // indirect
	github.com/c4milo/gotoolkit v0.0.0-20170704181456-e37eeabad07e // indirect
	github.com/cenkalti/backoff v2.2.1+incompatible // indirect
	github.com/cespare/xxhash/v2 v2.1.1 // indirect
	github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e // indirect
	github.com/cloudfoundry/jibber_jabber v0.0.0-20151120183258-bcc4c8345a21 // indirect
	github.com/coreos/go-json v0.0.0-20200220154158-5ae607161559 // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd/v22 v22.3.2 // indirect
	github.com/coreos/vcontext v0.0.0-20201120045928-b0e13dab675c // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dchest/bcrypt_pbkdf v0.0.0-20150205184540-83f37f9c154a // indirect
	github.com/deckarep/golang-set v1.8.0 // indirect
	github.com/denverdino/aliyungo v0.0.0-20211216040745-6cc94847413f // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible // indirect
	github.com/dimchansky/utfbom v1.1.1 // indirect
	github.com/dustinkirkland/golang-petname v0.0.0-20191129215211-8e5a1ed0cff0 // indirect
	github.com/dylanmei/iso8601 v0.1.0 // indirect
	github.com/eapache/go-resiliency v1.2.0 // indirect
	github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/evanphx/json-patch v4.12.0+incompatible // indirect
	github.com/fatih/color v1.12.0 // indirect
	github.com/form3tech-oss/jwt-go v3.2.3+incompatible // indirect
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/gammazero/deque v0.0.0-20190130191400-2afb3858e9c7 // indirect
	github.com/gammazero/workerpool v0.0.0-20190406235159-88d534f22b56 // indirect
	github.com/go-kit/kit v0.10.0 // indirect
	github.com/go-logfmt/logfmt v0.5.0 // indirect
	github.com/go-logr/logr v1.2.0 // indirect
	github.com/go-openapi/analysis v0.19.5 // indirect
	github.com/go-openapi/errors v0.19.8 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.19.5 // indirect
	github.com/go-openapi/loads v0.19.4 // indirect
	github.com/go-openapi/runtime v0.19.11 // indirect
	github.com/go-openapi/spec v0.19.9 // indirect
	github.com/go-openapi/strfmt v0.20.1 // indirect
	github.com/go-openapi/swag v0.19.14 // indirect
	github.com/go-openapi/validate v0.20.1 // indirect
	github.com/go-playground/locales v0.13.0 // indirect
	github.com/go-playground/universal-translator v0.17.0 // indirect
	github.com/go-stack/stack v1.8.0 // indirect
	github.com/gobuffalo/flect v0.2.3 // indirect
	github.com/gofrs/uuid v3.3.0+incompatible // indirect
	github.com/gogap/errors v0.0.0-20160523102334-149c546090d0 // indirect
	github.com/gogap/stack v0.0.0-20150131034635-fef68dddd4f8 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/snappy v0.0.1 // indirect
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/martian v2.1.1-0.20190517191504-25dcb96d9e51+incompatible // indirect
	github.com/google/renameio v1.0.0 // indirect
	github.com/googleapis/gax-go/v2 v2.0.5 // indirect
	github.com/googleapis/gnostic v0.5.5 // indirect
	github.com/hashicorp/errwrap v1.0.0 // indirect
	github.com/hashicorp/go-checkpoint v0.5.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	github.com/hashicorp/go-getter v1.5.2 // indirect
	github.com/hashicorp/go-hclog v0.14.1 // indirect
	github.com/hashicorp/go-multierror v1.1.0 // indirect
	github.com/hashicorp/go-retryablehttp v0.6.6 // indirect
	github.com/hashicorp/go-safetemp v1.0.0 // indirect
	github.com/hashicorp/go-slug v0.4.1 // indirect
	github.com/hashicorp/go-tfe v0.8.1 // indirect
	github.com/hashicorp/go-uuid v1.0.2 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/hashicorp/hcl/v2 v2.8.2 // indirect
	github.com/hashicorp/terraform-config-inspect v0.0.0-20200806211835-c481b8bfa41e // indirect
	github.com/hashicorp/terraform-exec v0.13.1 // indirect
	github.com/hashicorp/terraform-json v0.9.0 // indirect
	github.com/hashicorp/terraform-plugin-test/v2 v2.1.2 // indirect
	github.com/hashicorp/terraform-svchost v0.0.0-20200729002733-f050f53b9734 // indirect
	github.com/hashicorp/vault v1.3.0 // indirect
	github.com/hashicorp/yamux v0.0.0-20200609203250-aecfd211c9ce // indirect
	github.com/hinshun/vt10x v0.0.0-20180809195222-d55458df857c // indirect
	github.com/hokaccha/go-prettyjson v0.0.0-20170213120834-e6b9231a2b1c // indirect
	github.com/hooklift/iso9660 v1.0.0 // indirect
	github.com/huandu/xstrings v1.3.2 // indirect
	github.com/imdario/mergo v0.3.12 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/jcmturner/gofork v1.0.0 // indirect
	github.com/jen20/awspolicyequivalence v1.1.0 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/jstemmer/go-junit-report v0.9.1 // indirect
	github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0 // indirect
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51 // indirect
	github.com/keybase/go-crypto v0.0.0-20200123153347-de78d2cb44f4 // indirect
	github.com/klauspost/compress v1.11.8 // indirect
	github.com/kr/fs v0.1.0 // indirect
	github.com/kr/pretty v0.2.1 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/libvirt/libvirt-go-xml v5.10.0+incompatible // indirect
	github.com/mailru/easyjson v0.7.6 // indirect
	github.com/masterzen/simplexml v0.0.0-20190410153822-31eea3082786 // indirect
	github.com/masterzen/winrm v0.0.0-20200615185753-c42b5136ff88 // indirect
	github.com/mattn/go-colorable v0.1.8 // indirect
	github.com/mattn/go-isatty v0.0.12 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2-0.20181231171920-c182affec369 // indirect
	github.com/mgutz/ansi v0.0.0-20170206155736-9520e82c474b // indirect
	github.com/minsikl/netscaler-nitro-go v0.0.0-20170827154432-5b14ce3643e3 // indirect
	github.com/mitchellh/colorstring v0.0.0-20190213212951-d06e56a500db // indirect
	github.com/mitchellh/copystructure v1.0.0 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/go-linereader v0.0.0-20190213213312-1b945b3263eb // indirect
	github.com/mitchellh/go-testing-interface v1.14.1 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/mitchellh/hashstructure v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.4.1 // indirect
	github.com/mitchellh/panicwrap v1.0.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/nicksnyder/go-i18n v1.10.0 // indirect
	github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d // indirect
	github.com/oklog/run v1.1.0 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.0.2-0.20190823105129-775207bd45b6 // indirect
	github.com/openshift/cluster-api v0.0.0-20190805113604-f8de78af80fc // indirect
	github.com/packer-community/winrmcp v0.0.0-20180921211025-c76d91c1e7db // indirect
	github.com/pelletier/go-toml v1.9.3 // indirect
	github.com/pierrec/lz4 v2.6.1+incompatible // indirect
	github.com/pkg/browser v0.0.0-20180916011732-0a3d74bf9ce4 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/posener/complete v1.2.3 // indirect
	github.com/pquerna/otp v1.2.1-0.20191009055518-468c2dd2b58d // indirect
	github.com/prometheus/client_model v0.2.0 // indirect
	github.com/prometheus/procfs v0.6.0 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20200313005456-10cdbea86bc0 // indirect
	github.com/rickb777/date v1.12.5-0.20200422084442-6300e543c4d9 // indirect
	github.com/rickb777/plural v1.2.0 // indirect
	github.com/satori/go.uuid v1.2.0 // indirect
	github.com/satori/uuid v1.2.0 // indirect
	github.com/shopspring/decimal v1.2.0 // indirect
	github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749 // indirect
	github.com/softlayer/softlayer-go v1.0.3 // indirect
	github.com/softlayer/xmlrpc v0.0.0-20200409220501-5f089df7cb7e // indirect
	github.com/spf13/afero v1.6.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stoewer/go-strcase v1.2.0 // indirect
	github.com/svanharmelen/jsonapi v0.0.0-20180618144545-0c0828c3f16d // indirect
	github.com/tjfoc/gmsm v1.3.2 // indirect
	github.com/tombuildsstuff/giovanni v0.15.1 // indirect
	github.com/valyala/bytebufferpool v1.0.0 // indirect
	github.com/valyala/fasthttp v1.22.0 // indirect
	github.com/vmihailenco/msgpack/v4 v4.3.12 // indirect
	github.com/vmihailenco/tagparser v0.1.1 // indirect
	github.com/xanzy/ssh-agent v0.2.1 // indirect
	github.com/xlab/treeprint v0.0.0-20181112141820-a009c3971eca // indirect
	github.com/zclconf/go-cty-yaml v1.0.2 // indirect
	go.mongodb.org/mongo-driver v1.5.1 // indirect
	go.opencensus.io v0.22.5 // indirect
	golang.org/x/mod v0.4.2 // indirect
	golang.org/x/term v0.0.0-20210615171337-6886f2dfbf5b // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/time v0.0.0-20210723032227-1f47c861a9ac // indirect
	golang.org/x/tools v0.1.6-0.20210820212750-d4cc65f0b2ff // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
	gomodules.xyz/jsonpatch/v2 v2.2.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/go-playground/validator.v9 v9.31.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/jcmturner/aescts.v1 v1.0.1 // indirect
	gopkg.in/jcmturner/dnsutils.v1 v1.0.1 // indirect
	gopkg.in/jcmturner/gokrb5.v7 v7.5.0 // indirect
	gopkg.in/jcmturner/rpc.v1 v1.1.0 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/resty.v1 v1.12.0 // indirect
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b // indirect
	honnef.co/go/tools v0.0.1-2020.1.6 // indirect
	k8s.io/component-base v0.23.0 // indirect
	k8s.io/kube-openapi v0.0.0-20211115234752-e816edb12b65 // indirect
	sigs.k8s.io/controller-runtime v0.11.0 // indirect
	sigs.k8s.io/json v0.0.0-20211020170558-c049b76a60c6 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.0 // indirect
	sigs.k8s.io/yaml v1.3.0 // indirect
)

replace (
	cloud.google.com/go => cloud.google.com/go v0.57.0
	github.com/IBM-Cloud/terraform-provider-ibm => github.com/openshift/terraform-provider-ibm v1.26.2-openshift-2
	github.com/go-log/log => github.com/go-log/log v0.1.1-0.20181211034820-a514cf01a3eb // Pinned by MCO
	github.com/gophercloud/gophercloud => github.com/gophercloud/gophercloud v0.17.0
	github.com/hashicorp/terraform => github.com/openshift/hashicorp-terraform v0.14.6-openshift-1 // Pin to fork with deduplicated rpc types v0.14.6-openshift-1
	github.com/hashicorp/terraform-plugin-sdk => github.com/openshift/hashicorp-terraform-plugin-sdk v1.16.0-openshift // Pin to fork with public rpc types
	github.com/hashicorp/terraform-provider-vsphere => github.com/openshift/terraform-provider-vsphere v1.24.3-openshift
	github.com/metal3-io/baremetal-operator => github.com/openshift/baremetal-operator v0.0.0-20220128094204-28771f489634 // Use OpenShift fork
	github.com/metal3-io/baremetal-operator/apis => github.com/openshift/baremetal-operator/apis v0.0.0-20220128094204-28771f489634 // Use OpenShift fork
	github.com/metal3-io/baremetal-operator/pkg/hardwareutils => github.com/openshift/baremetal-operator/pkg/hardwareutils v0.0.0-20220128094204-28771f489634 // Use OpenShift fork
	github.com/openshift/client-go => github.com/openshift/client-go v0.0.0-20211209144617-7385dd6338e3 // Pin client-go
	github.com/openshift/machine-config-operator => github.com/openshift/machine-config-operator v0.0.1-0.20201009041932-4fe8559913b8 // Pin MCO so it doesn't get downgraded
	github.com/spf13/afero => github.com/spf13/afero v1.2.2
	github.com/terraform-providers/terraform-provider-aws => github.com/openshift/terraform-provider-aws v1.60.1-0.20211215220004-24df6d73af46 // Pin to openshift fork with tag v3.1.0-openshift-2
	github.com/terraform-providers/terraform-provider-azurerm => github.com/openshift/terraform-provider-azurerm v1.44.1-0.20210224232508-7509319df0f4 // Pin to 2.48.0-openshift
	github.com/terraform-providers/terraform-provider-azurestack => github.com/openshift/terraform-provider-azurestack v0.10.0-openshift // Use OpenShift fork
	github.com/terraform-providers/terraform-provider-google v1.20.1-0.20200623174414-27107f2ee160 => github.com/openshift/terraform-providers-terraform-provider-google v1.20.1-0.20211201190933-7b79c6d1afc8 // Pin to 3.27.0-openshift
	github.com/terraform-providers/terraform-provider-ignition/v2 => github.com/community-terraform-providers/terraform-provider-ignition/v2 v2.1.0
	k8s.io/client-go => k8s.io/client-go v0.23.0
	k8s.io/kubectl => k8s.io/kubectl v0.23.0
	sigs.k8s.io/cluster-api-provider-aws => github.com/openshift/cluster-api-provider-aws v0.2.1-0.20210121023454-5ffc5f422a80
	sigs.k8s.io/cluster-api-provider-azure => github.com/openshift/cluster-api-provider-azure v0.1.0-alpha.3.0.20210626224711-5d94c794092f // Indirect dependency through MAO from cluster API providers
	sigs.k8s.io/cluster-api-provider-openstack => github.com/openshift/cluster-api-provider-openstack v0.0.0-20211111204942-611d320170af
	sigs.k8s.io/controller-tools => sigs.k8s.io/controller-tools v0.3.1-0.20200617211605-651903477185
)

// Prevent the following modules from upgrading version as result of terraform-provider-kubernetes module
// The following modules need to be locked to compile correctly with
// terraform-provider-azure, terraform-provider-google, and
// terraform-provider-ibm. This also locks in Terraform to v0.14.6.
replace (
	github.com/Azure/go-autorest/autorest => github.com/Azure/go-autorest/autorest v0.11.17
	github.com/Azure/go-autorest/autorest/adal => github.com/Azure/go-autorest/autorest/adal v0.9.10 // indirect
	github.com/Azure/go-autorest/autorest/date => github.com/Azure/go-autorest/autorest/date v0.3.0
	github.com/Azure/go-autorest/autorest/validation => github.com/Azure/go-autorest/autorest/validation v0.3.1
	github.com/IBM/vpc-go-sdk => github.com/IBM/vpc-go-sdk v0.7.0
	github.com/apparentlymart/go-cidr => github.com/apparentlymart/go-cidr v1.1.0
	github.com/aws/aws-sdk-go => github.com/aws/aws-sdk-go v1.35.37
	github.com/go-openapi/errors => github.com/go-openapi/errors v0.19.2
	github.com/go-openapi/spec => github.com/go-openapi/spec v0.19.4
	github.com/go-openapi/validate => github.com/go-openapi/validate v0.19.8
	github.com/hashicorp/go-getter => github.com/hashicorp/go-getter v1.5.2
	github.com/hashicorp/go-plugin => github.com/hashicorp/go-plugin v1.3.0
	github.com/hashicorp/terraform-plugin-test/v2 => github.com/hashicorp/terraform-plugin-test/v2 v2.2.0
	github.com/ulikunitz/xz => github.com/ulikunitz/xz v0.5.7
	google.golang.org/api => google.golang.org/api v0.33.0
	google.golang.org/genproto => google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013
	google.golang.org/grpc => google.golang.org/grpc v1.35.0
)
