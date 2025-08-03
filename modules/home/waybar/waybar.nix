{ inputs, pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    package = inputs.waybar.packages.${pkgs.system}.waybar;
  };
}
