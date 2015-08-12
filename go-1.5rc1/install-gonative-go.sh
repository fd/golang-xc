set -e

go get github.com/inconshreveable/gonative

rm -rf /usr/local/go
cd /usr/local
gonative build -version=${GOVERSION}
