#!/usr/bin/env zsh

respond="$(echo " Shutdown\n Restart\n Cancel" | fuzzel --dmenu --lines=3 --width=10 --prompt='')"

if [ $respond = ' Shutdown' ] 
then
    echo "shutdown"
	shutdown now    
elif [ $respond = ' Restart' ] 
then
    echo "restart"
    reboot
else
    notify-send "cancel shutdown"
fi
