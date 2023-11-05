{ pkgs, ... }: 
{
  programs.btop = {
    enable = true;
    
    settings = {
        color_theme = "dracula";
        theme_background = false;
    };
  };
}