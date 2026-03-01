#!/usr/bin/env bash

# based on https://github.com/ash-17/omarchy-external-monitor/tree/d06a323e7fb39d73be3955b94305830bfdc4a74a

restart-apps() {
    # restart wallpaper
    pkill .swww-daemon-wr 2> /dev/null
    init-wallpaper &

    # restart waybar
    pkill .waybar-wrapped 2> /dev/null
    waybar &

    # restart swayosd (crashes on monitor change)
    pkill .swayosd-server 2> /dev/null
    swayosd-server &
}

handle-monitor-state() {
    # is external monitor connected?
    if hyprctl monitors | grep -qE "HDMI|DP"; then
        # external monitor connected - disable laptop screen
        hyprctl keyword monitor "eDP-1,disable"
    else
        # no external monitor - enable laptop screen
        hyprctl keyword monitor "eDP-1,preferred,auto,1"
    fi
}

# --- startup check --- #
sleep 1

handle-monitor-state
restart-apps

# --- hyprland events listener --- #
socat -U - UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" |
    while read -r line; do
        # react on external monitor plug/unplug or hyprland reload
        if echo "$line" | grep -qE "monitor(added|removed)>>(HDMI|DP)|configreloaded"; then
            handle-monitor-state
            restart-apps
        fi
    done
