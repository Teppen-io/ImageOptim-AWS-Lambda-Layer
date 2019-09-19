#!/usr/bin/env bash
##
# Author:   tom@teppen.io
# Desc:     Build an AWS Lambda layer containing the ImageOptim gem
##
set -e

rm -rf layer.zip && rm -rf ruby && mkdir -p ruby/gems

docker build -t ruby25-imageoptim-builder -f Dockerfile .

CONTAINER=$(docker run -d ruby25-imageoptim-builder false)

docker cp \
    $CONTAINER:/var/task/vendor/bundle/ruby/2.5.0 \
    ruby/gems/2.5.0

docker rm $CONTAINER

zip -r layer.zip ruby/ && rm -rf ruby/
