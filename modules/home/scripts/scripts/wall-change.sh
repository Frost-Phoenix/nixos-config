#!/usr/bin/env bash

animations=("fade" "outer" "center" "any")
random_animation=${animations[RANDOM % ${#animations[@]}]}

if [[ "$random_animation" == "wipe" ]]; then
  swww img --transition-type="wipe" --transition-angle=135 $1 &
else
  swww img --transition-type="$random_animation" $1 &
fi
