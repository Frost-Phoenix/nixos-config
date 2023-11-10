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
in {
  home.packages = with pkgs; [
    wall-change
    wallpaper-picker
    push
    commit
  ];
}
