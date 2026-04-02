#!/usr/bin/env bash

# Start awww daemon if not running
if ! pgrep -x awww-daemon > /dev/null; then
    awww-daemon --no-cache &

    # Wait until the daemon is ready
    while ! awww query > /dev/null 2>&1; do
        sleep 0.1
    done
fi

# Set wallpaper
awww img -t none ~/Pictures/wallpapers/wallpaper &
