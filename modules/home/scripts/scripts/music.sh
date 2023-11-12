#!/usr/bin/env bash

if [[ $# == 0 ]]; then
    hyprctl dispatch exec "[workspace 8 silent] audacious -t"
    sleep 0.5
    audtool playlist-repeat-status |grep "on" || audtool playlist-repeat-toggle
    audtool playlist-shuffle-status|grep "on" || audtool playlist-shuffle-toggle
elif [[ $1 == -s ]]; then
    pkill audacious
else
    echo "[ERROR] => Wrong argument..."
fi