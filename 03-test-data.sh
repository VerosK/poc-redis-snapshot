#!/bin/sh

set -x
set -e

if ! test -f "redis-dump-go"; then
    wget "https://gitlab.com/yannhamon/redis-dump-go/-/jobs/artifacts/master/download?job=build" \
        -O "redis-dump-go.zip"
    unzip "redis-dump-go.zip"
    rm "redis-dump-go.zip"
    rm "LICENSE.txt"
fi

./redis-dump-go | grep "SET" | wc -l
