{ inputs, pkgs, ... }:
{
  home.packages = (with pkgs; [
    inputs.wezterm.packages.${pkgs.system}.default
  ]);

  xdg.configFile."wezterm/wezterm.lua".source = ./wezterm.lua;
}
