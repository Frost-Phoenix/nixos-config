{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ mullvad-browser ]);
}