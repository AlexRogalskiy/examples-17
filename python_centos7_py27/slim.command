#!/usr/bin/env bash

here="$(dirname "$BASH_SOURCE")"
cd $here

#eval "$(docker-machine env default)"
docker-slim build --http-probe my/sample-python-app-centos7-py27

