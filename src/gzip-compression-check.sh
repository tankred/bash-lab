#!/bin/bash

URL=$1
PLAIN="$(curl $URL --silent --write-out "%{size_download}\n" --output /dev/null)"
GZIPPED="$(curl $URL --silent -H "Accept-Encoding: gzip,deflate" --write-out "%{size_download}\n" --output /dev/null)"

if test $PLAIN -gt $GZIPPED
then echo "supported"
else echo "unsupported"
fi
