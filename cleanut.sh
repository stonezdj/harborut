#!/bin/bash

source ./env.sh

docker-compose -f docker-compose.test.yml down -v && rm -rf /data/database && docker-compose -f docker-compose.test.yml up -d
./pushimage.sh

#sleep 20
#pushd /Users/daojunz/Documents/goworkdir/src/github.com/goharbor/harbor
#go test ./src/core/api/...
#popd
if [ ! -d /etc/core/ca ]; then
    mkdir -p /etc/core/ca
fi
cp ca.crt /etc/core/ca/