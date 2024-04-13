{ pkgs, ... }: 
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];
}