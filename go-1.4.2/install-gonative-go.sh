set -e

rm -rf /usr/local/go
cd /usr/local
gonative build -version=${GOVERSION}
