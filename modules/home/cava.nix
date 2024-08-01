{ inputs, pkgs, ... }: 
{
  programs.cava = {
    enable = true;  
  };
  
  home.file.".config/cava/config".text = ''
    # custom cava config

    [color]
    gradient = 1

    gradient_color_1 = '#98971a'
    gradient_color_2 = '#98971a'
    gradient_color_3 = '#b8bb26'
    gradient_color_4 = '#b8bb26'
    gradient_color_5 = '#d79921'
    gradient_color_6 = '#d79921'
    gradient_color_7 = '#fb4934'
    gradient_color_8 = '#fb4934'
  '';
}
