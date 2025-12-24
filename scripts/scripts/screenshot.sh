#!/usr/bin/env bash

dir="$HOME/Pictures/Screenshots"
time=$(date +'%Y_%m_%d_at_%Hh%Mm%Ss')
file="${dir}/Screenshot_${time}.png"

copy() {
    GRIMBLAST_HIDE_CURSOR=0 grimblast --notify --freeze copy area
}

save() {
    GRIMBLAST_HIDE_CURSOR=0 grimblast --notify --freeze save area "$file"
}

swappy_() {
    GRIMBLAST_HIDE_CURSOR=0 grimblast --notify --freeze save area "$file"
    swappy -f "$file"
}

if [[ ! -d "$dir" ]]; then
    mkdir -p "$dir"
fi

if [[ "$1" == "--copy" ]]; then
    copy
elif [[ "$1" == "--save" ]]; then
    save
elif [[ "$1" == "--swappy" ]]; then
    swappy_
else
    echo -e "Available Options: --copy --save --swappy"
fi

exit 0
