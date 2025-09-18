#! /usr/bin/env bash

shutdown='󰐥'
reboot='󰜉'
lock='󰌾'
suspend='󰤄'

yes='✔'
no='✘'

theme="$HOME/.config/rofi/powermenu-theme.rasi"

rofi_cmd() {
	rofi -dmenu -theme ${theme}
}

run_rofi() {
	echo -e "$shutdown\n$reboot\n$lock\n$suspend\n$no" | rofi_cmd
}

confirm_cmd() {
	rofi -theme-str 'window {width: 200px;}' \
		 -theme-str 'listview { columns: 2; }' \
	     -dmenu -theme ${theme}
}

rofi_confirm() {
	echo -e "$yes\n$no" | confirm_cmd
}

run_cmd() {
	selected="$(rofi_confirm)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--suspend' ]]; then
			systemctl suspend
		fi
	else
		exit 0
	fi
}

chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
		sleep 0.1
		swaylock
        ;;
    $suspend)
		sleep 0.1
		run_cmd --suspend
        ;;
esac