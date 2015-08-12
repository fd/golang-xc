set -e

mkdir -p /deps
cd /deps

curl -O https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz
tar -C /usr/local -xzf go${GOVERSION}.linux-amd64.tar.gz

go get github.com/inconshreveable/gonative
