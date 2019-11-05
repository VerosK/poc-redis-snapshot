#!/bin/sh

set -x
set -e

echo "SAVE" | nc localhost 6379
