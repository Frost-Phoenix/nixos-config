#!/usr/bin/env zsh

respond="$(echo "---------------- Yes ----------------\n---------------- Nah ----------------" | wofi --show dmenu)"
if [ $respond = '---------------- Yes ----------------' ] 
then
    echo "shutdown"
    shutdown now
else
    notify-send "cancel shutdown"
fi