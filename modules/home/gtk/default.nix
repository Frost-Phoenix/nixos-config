{ pkgs, ... }:
let
  matrix-gtk = pkgs.fetchFromGitHub {
    owner = "samiulbasirfahim";
    repo = "Matrix-gtk";
    rev = "9ff060e016e5cd4830aafb6299142c3d8922944e";
    sha256 = "K7tEtB0WGKyjND+pZKUd4pktBlCV3v27pvqaxMILpFU=";
  };
in
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
  ];
  xdg.dataFile."themes/matrix-gtk".source = matrix-gtk;
  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    theme = {
      name = "matrix-gtk";
    };
    cursorTheme = {
      name = "Catppuccin-Frappe-Dark";
    };
  };
  home.pointerCursor = {
    package = pkgs.catppuccin-cursors;
    name = "Catppuccin-Frappe-Red";
    size = 15;
  };
}
