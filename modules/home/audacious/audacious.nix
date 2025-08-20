{ pkgs, ... }:
{
  home.packages = with pkgs; [ audacious ];

  xdg.configFile."audacious/config".source = ./config;
  xdg.configFile."audacious/eq.preset".source = ./eq.preset;
}
