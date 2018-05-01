#!/usr/bin/env bash

function usage() {
    echo "Usage:"
    echo "    --help"
    echo "        Display this help"
    echo "    --sleep"
    echo "        Just sleep (useful for deamon mode)"
    echo "Otherwise execute the commands given"
    exit 0
}

function doSleep() {
    echo "Entering sleep mode"
    while true ; do
        sleep 3600
    done
}

if [ "$1" = "" ] ; then
    doSleep
fi

case $1 in
    "--help")
        usage
        ;;
    "--sleep")
        doSleep
        ;;
    *)
        exec "$@"
        ;;
esac
