#!/usr/bin/env bash

for i in "$@" ; do
    tar -xvzf $i
    break
done
