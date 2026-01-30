#/usr/bin/env bash

# toggle mic on/off
swayosd-client --input-volume=mute-toggle
# set mic status led on/off accordingly
micStatus=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -c MUTED)
brightnessctl -d platform::micmute set "$micStatus"
