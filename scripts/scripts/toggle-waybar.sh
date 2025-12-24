#!/usr/bin/env bash

SERVICE=".waybar-wrapped"

if pgrep -x "$SERVICE" > /dev/null; then
    pkill -9 waybar
else
    runbg waybar
fi
