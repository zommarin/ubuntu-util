#!/usr/bin/env bash

if [ "$1" = "--help" ] ; then
    echo "Help is on the way"
    exit 0
fi
exec "$@"
