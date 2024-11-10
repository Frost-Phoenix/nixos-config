{ inputs, pkgs, ... }:
{
  home.packages = (with pkgs; [
    floorp
    inputs.zen-browser.packages."${system}".default
  ]);
}
