set -e

mkdir -p /deps
cd /deps

curl -O https://storage.googleapis.com/golang/go${GOVERSION_BOOTSTRAP}.linux-amd64.tar.gz
tar -C /root -xzf go${GOVERSION_BOOTSTRAP}.linux-amd64.tar.gz
mv /root/go /root/go${GOVERSION_BOOTSTRAP}

curl -O https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz
tar -C /usr/local -xzf go${GOVERSION}.linux-amd64.tar.gz

go get github.com/inconshreveable/gonative

rm -rf /usr/local/go
cd /usr/local
gonative build -version=${GOVERSION}

rm -rf /root/go${GOVERSION_BOOTSTRAP}
rm -rf /deps
rm -rf /go
mkdir /go
