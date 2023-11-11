{pkgs, ...}: let
  wall-change = pkgs.writeShellScriptBin "wall-change" ''
    swaybg -m fill -i $1
  '';
  wallpaper-picker = pkgs.writeShellScriptBin "wallpaper-picker" ''
    wallpaper_folder=$HOME/Pictures/wallpapers
    wallpaper_location="$(ls $wallpaper_folder | wofi -n --show dmenu)"
    if [[ -d $wallpaper_folder/$wallpaper_location ]]; then
        wallpaper_temp="$wallpaper_location"
    elif [[ -f $wallpaper_folder/$wallpaper_location ]]; then
    	wall-change $wallpaper_folder/$wallpaper_temp/$wallpaper_location
    else
        exit 1
    fi
  '';
  push = pkgs.writeShellScriptBin "push" ''
    git_directory=$PWD/.git
    if [[ -d $git_directory ]];then
      git add .
      read -p "Enter commit name: " commit_name
      git commit -m "$commit_name"
      git push
    else
      echo "Git wasn't initialized here."
    fi
  '';
  commit = pkgs.writeShellScriptBin "commit" ''
    git_directory=$PWD/.git
    if [[ -d $git_directory ]];then
      git add .
      read -p "Enter commit name: " commit_name
      git commit -m "$commit_name"
    else
      echo "Git wasn't initialized here."
    fi
  '';
  dsize = pkgs.writeShellScriptBin "dsize" ''
    if [ "$#" -eq 1 ]; then
      du -hs $1
    else
        echo "[ERROR] => Wrong number of parameters"
    fi
  '';
  runbg = pkgs.writeShellScriptBin "runbg" ''
    [ $# -eq 0 ] && {  # $# is number of args
      echo "$(basename $0): missing command" >&2
      exit 1
    }
    prog="$(which "$1")"  # see below
    [ -z "$prog" ] && {
      echo "$(basename $0): unknown command: $1" >&2
      exit 1
    }
    shift  # remove $1, now $prog, from args
    tty -s && exec </dev/null      # if stdin is a terminal, redirect from null
    tty -s <&1 && exec >/dev/null  # if stdout is a terminal, redirect to null
    tty -s <&2 && exec 2>&1        # stderr to stdout (which might not be null)
    "$prog" "$@" &  # $@ is all args
  '';
  music = pkgs.writeShellScriptBin "music" ''
    if [[ $# == 0 ]]; then
        hyprctl dispatch exec "[workspace 8 silent] audacious -t"
        sleep 0.5
        audtool playlist-repeat-status |grep "on" || audtool playlist-repeat-toggle
        audtool playlist-shuffle-status|grep "on" || audtool playlist-shuffle-toggle
    elif [[ $1 == -s ]]; then
        pkill audacious
    else
        echo "[ERROR] => Wrong argument..."
    fi
  '';
in {
  home.packages = with pkgs; [
    wall-change
    wallpaper-picker
    push
    commit
    dsize
    runbg
    music
  ];
}
