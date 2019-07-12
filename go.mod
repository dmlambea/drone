module github.com/drone/drone

replace (
	github.com/drone/drone-runtime => github.com/dmlambea/drone-runtime v1.0.7
	github.com/drone/drone-yaml => github.com/dmlambea/drone-yaml v1.1.4
)

require (
	github.com/99designs/httpsignatures-go v0.0.0-20170731043157-88528bf4ca7e
	github.com/asaskevich/govalidator v0.0.0-20180315120708-ccb8e960c48f
	github.com/aws/aws-sdk-go v1.15.57
	github.com/codegangsta/negroni v1.0.0 // indirect
	github.com/coreos/go-semver v0.2.0
	github.com/dchest/authcookie v0.0.0-20120917135355-fbdef6e99866
	github.com/dchest/uniuri v0.0.0-20160212164326-8902c56451e9
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/drone/drone-go v1.0.5-0.20190427184118-618e4496482e
	github.com/drone/drone-runtime v1.0.6
	github.com/drone/drone-ui v0.0.0-20190530175131-92ba3df1e0a9
	github.com/drone/drone-yaml v1.1.4-0.20190614011118-4889634ea9ae
	github.com/drone/envsubst v1.0.1
	github.com/drone/go-license v1.0.2
	github.com/drone/go-login v1.0.4-0.20190311170324-2a4df4f242a2
	github.com/drone/go-scm v1.5.0
	github.com/drone/signal v1.0.0
	github.com/dustin/go-humanize v1.0.0
	github.com/go-chi/chi v3.3.3+incompatible
	github.com/go-chi/cors v1.0.0
	github.com/go-ini/ini v1.39.0 // indirect
	github.com/go-sql-driver/mysql v1.4.0
	github.com/golang/mock v1.1.1
	github.com/google/go-cmp v0.2.0
	github.com/google/go-jsonnet v0.12.1
	github.com/google/wire v0.2.1
	github.com/gorhill/cronexpr v0.0.0-20140423231348-a557574d6c02 // indirect
	github.com/gosimple/slug v1.3.0
	github.com/h2non/gock v1.0.10
	github.com/hashicorp/consul/api v1.1.0 // indirect
	github.com/hashicorp/go-hclog v0.9.2 // indirect
	github.com/hashicorp/go-immutable-radix v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.0.0
	github.com/hashicorp/go-plugin v1.0.1 // indirect
	github.com/hashicorp/go-retryablehttp v0.5.3
	github.com/hashicorp/go-version v1.2.0 // indirect
	github.com/hashicorp/golang-lru v0.5.1
	github.com/hashicorp/nomad v0.0.0-20190125003214-134391155854
	github.com/hashicorp/raft v1.1.0 // indirect
	github.com/hashicorp/vault/api v1.0.2 // indirect
	github.com/jmoiron/sqlx v0.0.0-20180614180643-0dae4fefe7c0
	github.com/joho/godotenv v1.3.0
	github.com/kelseyhightower/envconfig v1.3.0
	github.com/lib/pq v1.0.0
	github.com/mattn/go-sqlite3 v1.9.0
	github.com/mitchellh/hashstructure v1.0.0 // indirect
	github.com/nbio/st v0.0.0-20140626010706-e9e8d9816f32 // indirect
	github.com/oxtoacart/bpool v0.0.0-20150712133111-4e1c5567d7c2
	github.com/prometheus/client_golang v0.9.2
	github.com/rainycape/unidecode v0.0.0-20150907023854-cb7f23ec59be // indirect
	github.com/robfig/cron v0.0.0-20180505203441-b41be1df6967
	github.com/segmentio/ksuid v1.0.2
	github.com/sirupsen/logrus v0.0.0-20181103062819-44067abb194b
	github.com/smartystreets/goconvey v0.0.0-20190710185942-9d28bd7c0945 // indirect
	github.com/ugorji/go v1.1.7 // indirect
	github.com/unrolled/secure v0.0.0-20181022170031-4b6b7cf51606
	golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2
	golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6
	google.golang.org/appengine v1.4.0 // indirect
	gopkg.in/ini.v1 v1.44.0 // indirect
	gopkg.in/yaml.v2 v2.2.2
	k8s.io/api v0.0.0-20181130031204-d04500c8c3dd
	k8s.io/apimachinery v0.0.0-20181204150028-eb8c8024849b
	k8s.io/client-go v10.0.0+incompatible
)
