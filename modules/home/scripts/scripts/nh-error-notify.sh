#! /usr/bin/env bash

command="$@"
terminal_class="com.mitchellh.ghostty"

focus() {
    parent_pid=$PPID
    hyprctl dispatch focuswindow "class:$terminal_class" > /dev/null
}

start_time=$(date +%s)

$command
exit_status=$?

end_time=$(date +%s)
duration=$(($end_time - $start_time))

duration_formatted="$((duration / 60))m $(printf "%02d" $((duration % 60)))s"

active_window_class=$(hyprctl activewindow -j | jq -r '.class')

if [ "$active_window_class" != "$terminal_class" ]; then
    if [ $exit_status -ne 0 ]; then
        action=$(
            notify-send -u critical \
                --action="focus=focus" \
                "NixOS Flake" \
                "\'$command\' failed after $duration_formatted" 2> /dev/null
        )

        [ "$action" = "focus" ] && focus
    else
        notify-send -u normal \
            "NixOS Flake" \
            "\'$command\' succeeded after $duration_formatted" 2> /dev/null
    fi
fi

if [ $exit_status -ne 0 ]; then
    exit 1
fi
