#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
BDIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"

pushd $BDIR
source _docker-slim.env

docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock dslim/docker-slim build --publish-exposed-ports dslimexamples/$IMAGE_NAME
popd
