{ config, lib, pkgs, ... }: 
{
  home.packages = [ pkgs.neofetch ];
  xdg.configFile."neofetch/config.conf".source = ./config.conf;
}
