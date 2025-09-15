{ pkgs, ... }:
{
  home.packages = with pkgs; [ fastfetch ];

  xdg.configFile."fastfetch/config.jsonc".source = ./config.jsonc;
}
