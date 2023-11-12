#!/usr/bin/env bash

if hyprctl getoption decoration:active_opacity | grep "float: 1" >/dev/null ; then
    hyprctl keyword decoration:active_opacity 0.85 >/dev/null
    hyprctl keyword decoration:inactive_opacity 0.85 >/dev/null
else
    hyprctl keyword decoration:active_opacity 1 >/dev/null
    hyprctl keyword decoration:inactive_opacity 1 >/dev/null
fi
