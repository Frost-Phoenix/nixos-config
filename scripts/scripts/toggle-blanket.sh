#!/usr/bin/env bash
if hyprctl clients -j | jq -e ".[] | select(.class == \"com.rafaelmardojai.Blanket\")" > /dev/null; then
    hyprctl dispatch togglespecialworkspace blanket
else
    hyprctl dispatch exec "[workspace special:blanket] blanket"
fi
