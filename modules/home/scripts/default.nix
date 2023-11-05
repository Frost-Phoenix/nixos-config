{pkgs, ...}: let
  wall-change = pkgs.writeShellScriptBin "wall-change" ''
    swww img $1 --transition-type random --transition-pos "$(hyprctl cursorpos)" --transition-duration 3
  '';
  load-env = pkgs.writeShellScriptBin "load-env" ''
    bash ~/.local/bin/env/animation
    bash ~/.local/bin/env/layout
    bash ~/.local/bin/env/opacity
    bash ~/.local/bin/env/blur
    bash ~/.local/bin/env/wallpaper
  '';
  toggle-animation = pkgs.writeShellScriptBin "toggle-animation" ''
    blur_val=$(hyprctl getoption animations:enabled | grep int)
    echo "$blur_val"
    if [[ "$blur_val" == "	int: 1" ]]; then
        rm -rf ~/.local/bin/env/animation
        echo "hyprctl --batch 'keyword animations:enabled 0'" > ~/.local/bin/env/animation
        hyprctl --batch "keyword animations:enabled 0"
    else
        rm -rf ~/.local/bin/env/animation
        echo "hyprctl --batch 'keyword animations:enabled 1'" > ~/.local/bin/env/animation
        hyprctl --batch "keyword animations:enabled 1"
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
  toggle-blur = pkgs.writeShellScriptBin "toggle-blur" ''
    blur_val=$(hyprctl getoption decoration:blur | grep int)
    echo "$blur_val"
    if [[ "$blur_val" == "	int: 1" ]]; then
        rm -rf ~/.local/bin/env/blur
        echo "hyprctl --batch 'keyword decoration:blur 0'" > ~/.local/bin/env/blur
        hyprctl --batch "keyword decoration:blur 0"
    else
        rm -rf ~/.local/bin/env/blur
        echo "hyprctl --batch 'keyword decoration:blur 1'" > ~/.local/bin/env/blur
        hyprctl --batch "keyword decoration:blur 1"
    fi
  '';
  toggle-opacity = pkgs.writeShellScriptBin "toggle-opacity" ''
    opacity_val=$(hyprctl getoption decoration:active_opacity | grep float)
    echo "$opacity_val"
    if [[ "$opacity_val" == "	float: 0.850000" ]]; then
        rm -rf ~/.local/bin/env/opacity
        echo "hyprctl --batch 'keyword decoration:active_opacity 1.0 ; keyword decoration:inactive_opacity 1.0 ; keyword decoration:fullscreen_opacity 1.0'" > ~/.local/bin/env/opacity
        hyprctl --batch "keyword decoration:active_opacity 1.0 ; keyword decoration:inactive_opacity 1.0 ; keyword decoration:fullscreen_opacity 1.0"
    else
        rm -rf ~/.local/bin/env/opacity
        echo "hyprctl --batch 'keyword decoration:active_opacity 0.8500 ; keyword decoration:inactive_opacity 0.76 ; keyword decoration:fullscreen_opacity 1.0'" > ~/.local/bin/env/opacity
        hyprctl --batch "keyword decoration:active_opacity 0.8500 ; keyword decoration:inactive_opacity 0.76 ; keyword decoration:fullscreen_opacity 1.0"
    fi
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
in {
  home.file.".local/bin/toggle_layout".source = ./toggle_layout;
  home.file.".local/bin/anime".source = ./ani-cli;
  home.packages = with pkgs; [
    wall-change
    wallpaper-picker
    load-env
    toggle-animation
    toggle-blur
    toggle-opacity
    push
  ];
}
