{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ audacious ]);
  xdg.configFile."audacious/config".source = ./config;
}