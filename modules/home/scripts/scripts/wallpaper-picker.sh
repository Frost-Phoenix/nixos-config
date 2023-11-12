#!/usr/bin/env bash

wallpaper_folder=$HOME/Pictures/wallpapers
wallpaper_location="$(ls $wallpaper_folder | wofi -n --show dmenu)"
if [[ -d $wallpaper_folder/$wallpaper_location ]]; then
    wallpaper_temp="$wallpaper_location"
elif [[ -f $wallpaper_folder/$wallpaper_location ]]; then
    wall-change $wallpaper_folder/$wallpaper_temp/$wallpaper_location
else
    exit 1
fi