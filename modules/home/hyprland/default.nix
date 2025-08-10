{ inputs, ... }:
{
  imports = [
    ./hyprland.nix
    ./config.nix
    ./hyprlock.nix
    ./variables.nix
    ./plugins
    inputs.hyprland.homeManagerModules.default
  ];
}
