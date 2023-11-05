{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = [pkgs.neofetch];
  # xdg.configFile."neofetch".source = ./config;
}
