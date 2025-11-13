#!/usr/bin/env bash

# Start swww daemon if not running
if ! pgrep -x swww-daemon > /dev/null; then
    swww-daemon --no-cache &

    # Wait until the daemon is ready
    while ! swww query > /dev/null 2>&1; do
        sleep 0.1
    done
fi

# Set wallpaper
swww img -t none ~/Pictures/wallpapers/wallpaper &
