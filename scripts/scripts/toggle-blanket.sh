#!/usr/bin/env bash
class="com.rafaelmardojai.Blanket"

if hyprctl clients -j | jq -e ".[] | select(.class == \"$class\")" > /dev/null; then
    # Window already exists (pinned to special:blanket by windowrule) -> toggle visibility.
    hyprctl dispatch togglespecialworkspace blanket
else
    # No window yet (e.g. started with `blanket --hidden`). Surface the single
    # instance, wait for the window to map, then reveal the special workspace.
    hyprctl dispatch exec blanket
    for _ in $(seq 1 30); do
        if hyprctl clients -j | jq -e ".[] | select(.class == \"$class\")" > /dev/null; then
            break
        fi
        sleep 0.1
    done
    hyprctl dispatch togglespecialworkspace blanket
fi
