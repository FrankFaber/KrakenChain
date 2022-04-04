#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-krakenchainpay/krakenchaind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/krakenchaind docker/bin/
cp $BUILD_DIR/src/krakenchain-cli docker/bin/
cp $BUILD_DIR/src/krakenchain-tx docker/bin/
strip docker/bin/krakenchaind
strip docker/bin/krakenchain-cli
strip docker/bin/krakenchain-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
