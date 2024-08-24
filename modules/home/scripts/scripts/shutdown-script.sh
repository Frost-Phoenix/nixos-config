#!/usr/bin/env zsh

respond="$(echo " Shutdown\n Restart\n Cancel" | rofi -dmenu)"

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
