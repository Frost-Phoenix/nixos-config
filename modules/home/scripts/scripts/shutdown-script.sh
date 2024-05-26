#!/usr/bin/env zsh

respond="$(echo "------------- Shutdown --------------\n------------- Restart ---------------\n-------------- Cancel ---------------" | wofi --show dmenu -k /dev/null)"

if [ $respond = '------------- Shutdown --------------' ] 
then
    echo "shutdown"
	shutdown now    
elif [ $respond = '------------- Restart ---------------' ] 
then
    echo "restart"
    reboot
else
    notify-send "cancel shutdown"
fi
