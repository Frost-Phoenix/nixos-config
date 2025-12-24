#!/usr/bin/env bash

if hyprctl getoption decoration:blur:enabled | grep "int: 1" > /dev/null; then
    hyprctl keyword decoration:blur:enabled false > /dev/null
else
    hyprctl keyword decoration:blur:enabled true > /dev/null
fi
