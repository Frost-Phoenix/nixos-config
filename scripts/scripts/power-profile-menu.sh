#!/usr/bin/env bash

set -e

red='#cc241d'
green='#98971a'
yellow='#d79921'

power_saver="<span color='${green}'>󰾆 </span>"
balanced="<span color='${yellow}'>󰾅 </span>"
performance="<span color='${red}'>󰓅 </span>"

theme="$HOME/.config/rofi/powermenu-theme.rasi"

current_profile=$(powerprofilesctl get)
selected_row=0
case ${current_profile} in
    performance)
        selected_row=2
        ;;
    balanced)
        selected_row=1
        ;;
esac

rofi_cmd() {
    rofi -theme-str 'window {width: 300px;}' \
        -theme-str 'listview { columns: 3; }' \
        -selected-row ${selected_row} \
        -dmenu -theme "${theme}" -markup-rows
}

run_rofi() {
    echo -e "${power_saver}\n${balanced}\n${performance}" | rofi_cmd
}

run_cmd() {
    powerprofilesctl set "${1}"
    notify-send -u normal \
        "Power Profile" \
        "Switched to ${1}" 2> /dev/null
}

chosen="$(run_rofi)"
case ${chosen} in
    $performance)
        run_cmd performance
        ;;
    $balanced)
        run_cmd balanced
        ;;
    $power_saver)
        run_cmd power-saver
        ;;
esac
