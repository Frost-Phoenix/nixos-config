#! /usr/bin/env bash

command="$@"

focus() {
    parent_pid=$PPID
    terminal_class="com.mitchellh.ghostty"
    hyprctl dispatch focuswindow "class:$terminal_class" > /dev/null
}

if ! $command; then
    action=$(
        notify-send -u critical \
            --action="focus=focus" \
            "NixOS Flake" \
            "\'$command\' failed at $(date "+%H:%M:%S")" 2> /dev/null
    )

    [ "$action" = "focus" ] && focus

    exit 1
fi
