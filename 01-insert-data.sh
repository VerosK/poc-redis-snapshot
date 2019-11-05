#!/bin/sh

set -x
set -e

# docker-compose up

if ! test -f "10000 Sales Records.csv"; then
    wget "http://eforexcel.com/wp/wp-content/uploads/2017/07/10000-Sales-Records.zip"
    unzip "10000-Sales-Records.zip"
fi

while read f
do
    uuid=$(cat /proc/sys/kernel/random/uuid)
    cmd=$(printf "SET %s \"%s"\" "$uuid" "$f")
    echo $cmd | nc localhost 6379
done < "10000 Sales Records.csv"
