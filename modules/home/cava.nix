{ pkgs, ... }:
{
  programs.cava = {
    enable = true;
  };

  xdg.configFile."cava/config".text = ''
    # custom cava config

    [general]
    autosens = 1
    overshoot = 0

    [color]
    gradient = 1
    gradient_count = 8

    gradient_color_1 = '#99991a'
    gradient_color_2 = '#a28e00'
    gradient_color_3 = '#ab8200'
    gradient_color_4 = '#b37400'
    gradient_color_5 = '#bb6600'
    gradient_color_6 = '#c25400'
    gradient_color_7 = '#c8400d'
    gradient_color_8 = '#cd231d'
  '';
}
