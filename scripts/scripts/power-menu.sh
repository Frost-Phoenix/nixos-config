#!/usr/bin/env bash

red='#cc241d'
green='#98971a'
blue='#458588'
yellow='#d79921'
gray='#a89984'

shutdown="<span color='${red}'>󰐥</span>"
reboot="<span color='${green}'>󰜉</span>"
lock="<span color='${blue}'>󰌾</span>"
suspend="<span color='${yellow}'>󰤄</span>"
quit="<span color='${gray}'>✘</span>"

yes="<span color='${green}'>✔</span>"
no="<span color='${red}'>✘</span>"

theme="$HOME/.config/rofi/powermenu-theme.rasi"

rofi_cmd() {
    rofi -dmenu -theme ${theme} -markup-rows
}

run_rofi() {
    echo -e "$shutdown\n$reboot\n$lock\n$suspend\n$quit" | rofi_cmd
}

confirm_cmd() {
    rofi -theme-str 'window {width: 200px;}' \
        -theme-str 'listview { columns: 2; }' \
        -dmenu -theme ${theme} -markup-rows
}

rofi_confirm() {
    # echo -e "$yes\n$no" | confirm_cmd
    echo -e "$yes"
}

run_cmd() {
    selected="$(rofi_confirm)"
    if [[ "$selected" == "$yes" ]]; then
        if [[ $1 == '--shutdown' ]]; then
            systemctl poweroff
        elif [[ $1 == '--reboot' ]]; then
            systemctl reboot
        elif [[ $1 == '--suspend' ]]; then
            hyprlock &
            systemctl suspend
        fi
    else
        exit 0
    fi
}

chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
        run_cmd --shutdown
        ;;
    $reboot)
        run_cmd --reboot
        ;;
    $lock)
        sleep 0.1
        swaylock
        ;;
    $suspend)
        sleep 0.1
        run_cmd --suspend
        ;;
esac
