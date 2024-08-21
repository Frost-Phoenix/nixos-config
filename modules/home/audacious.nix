{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ audacious ]);
  xdg.configFile."audacious/config".text = ''
    [audacious]
    equalizer_active=TRUE
    equalizer_bands=-1,1,2,2,1,0,0,-1,-1,-1
    soft_clipping=TRUE

    [audgui]
    filesel_path=/home/frostphoenix/Music

    [audqt]
    icon_theme=audacious-flat-dark
    theme=dark

    [pipewire]
    volume_left=35
    volume_right=35

    [qtui]
    column_widths=25,25,275,175,50,175,175,25,100,28,75,275,275,275,75,275,175
    menu_visible=FALSE
    player_height=581
    player_width=941
    playlist_headers=FALSE
    playlist_headers_bold=TRUE
  '';
}