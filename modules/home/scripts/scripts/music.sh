#!/usr/bin/env bash

if (ps aux | grep Skype | grep -v grep > /dev/null)    
    pkill audacious
else
    hyprctl dispatch exec "[workspace 8 silent] audacious -t"
    sleep 0.5
    audtool playlist-repeat-status |grep "on" || audtool playlist-repeat-toggle
    audtool playlist-shuffle-status|grep "on" || audtool playlist-shuffle-toggle
fi