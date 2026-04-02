{ pkgs, ... }:
{
  home.packages = with pkgs; [ waypaper ];

  xdg.configFile."waypaper/config.ini".text = ''
    [Settings]
    language = en
    folder = ~/Pictures/wallpapers/others
    monitors = All
    wallpaper = ~/Pictures/wallpapers/others/nixos.png
    backend = awww
    fill = fill
    sort = name
    color = #ffffff
    subfolders = False
    show_hidden = False
    show_gifs_only = False
    post_command = pkill .waypaper-wrapp
    number_of_columns = 3
    awww_transition_type = any
    awww_transition_step = 90
    awww_transition_angle = 0
    awww_transition_duration = 2
    awww_transition_fps = 60
    use_xdg_state = False
  '';
}
