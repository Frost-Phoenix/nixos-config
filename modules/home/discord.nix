{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # webcord
    vesktop
  ];
}
