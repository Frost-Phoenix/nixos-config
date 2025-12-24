#!/usr/bin/env bash

config_file=~/.config/hypr/hyprland.conf
mainMod=$(grep '^\$mainMod=' "$config_file" | head -1 | cut -d= -f2)

if [ -z "$mainMod" ]; then
    mainMod="SUPER"
fi

keybinds=$(grep '^bind=' "$config_file" | sed "s/^bind=//; s/\$mainMod/$mainMod/g")

if pgrep -x rofi > /dev/null; then
    pkill rofi
else
    rofi -dmenu -theme-str 'window {width: 50%;} listview {columns: 1;}' -p "Keybinds" <<< "$keybinds"
fi
