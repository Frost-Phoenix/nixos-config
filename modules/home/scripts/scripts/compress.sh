#!/usr/bin/env bash

if (($# == 1)); then
    # echo -ne "Archive name: "
    # read name
    # tar -cvzf "$name.tar.gz" $1
    tar -cvzf "$1.tar.gz" $1
else
    echo "Wrong number of arguments..."
fi
