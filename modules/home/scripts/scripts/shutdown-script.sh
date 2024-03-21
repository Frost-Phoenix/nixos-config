#!/usr/bin/env zsh

respond="$(echo "---------------- Yes ----------------\n-------------- Restart --------------\n---------------- Nah ----------------" | wofi --show dmenu -k /dev/null)"

if [ $respond = '---------------- Yes ----------------' ] 
then
    echo "shutdown"
	shutdown now    
elif [ $respond = '-------------- Restart --------------' ] 
then
    echo "restart"
    reboot
else
    notify-send "cancel shutdown"
fi
