module github.com/flagship-io/flagship-go-sdk/v2

go 1.21

toolchain go1.23.2

require (
	git.mills.io/prologic/bitcask v1.0.2
	github.com/alicebob/miniredis/v2 v2.12.0
	github.com/flagship-io/flagship-common v0.0.18-beta.1
	github.com/go-redis/redis/v8 v8.0.0-beta.5
	github.com/sirupsen/logrus v1.8.1
	github.com/stretchr/testify v1.8.1
	google.golang.org/protobuf v1.32.0
)

require (
	github.com/abcum/lcp v0.0.0-20201209214815-7a3f3840be81 // indirect
	github.com/alicebob/gopher-json v0.0.0-20200520072559-a9ecdc9d1d3a // indirect
	github.com/cespare/xxhash v1.1.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200609043717-5ab96a526299 // indirect
	github.com/gofrs/flock v0.8.0 // indirect
	github.com/kr/pretty v0.3.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/plar/go-adaptive-radix-tree v1.0.4 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/rogpeppe/go-internal v1.8.0 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/yuin/gopher-lua v0.0.0-20191220021717-ab39c6098bdb // indirect
	go.opentelemetry.io/otel v0.6.0 // indirect
	golang.org/x/exp v0.0.0-20200228211341-fcea875c7e85 // indirect
	golang.org/x/net v0.4.0 // indirect
	golang.org/x/sys v0.3.0 // indirect
	google.golang.org/grpc v1.38.0 // indirect
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/flagship-io/flagship-common v0.0.18-beta.1 => github.com/ManomanoTech/flagship-common v0.0.0-20250502130340-199d60cd40dc
