#!/usr/bin/env bash

DISPLAY="eDP-1"

if hyprctl monitors | grep -q "^Monitor $DISPLAY"; then
    hyprctl keyword monitor "$DISPLAY,disable"
else
    hyprctl keyword monitor "$DISPLAY,preferred,auto,1"
fi
