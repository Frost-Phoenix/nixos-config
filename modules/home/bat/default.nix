{ config, pkgs, ... }:
let catppuccin-bat = {
  url = "github:catppuccin/bat";
  flake = false;
};
in 
{
 	programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
      theme = "Catppuccin-mocha";
    };
    themes = {
      # https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme
      Catppuccin-mocha = builtins.readFile "${catppuccin-bat}/Catppuccin-mocha.tmTheme";
    };
  };
}