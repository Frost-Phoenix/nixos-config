{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
  ];

  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
    iconTheme = pkgs.catppuccin-papirus-folders.override {
      flavor = "mocha";
      accent = "lavender";
    };
    theme = {
      name = "Catppuccin-Macchiato-Compact-Lavender-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "lavender" ];
        size = "compact";
        # tweaks = [ "rimless" ];
        variant = "macchiato";
      };
    };
    cursorTheme = {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 22;
    };
  };
  
  home.pointerCursor = {
    name = "Nordzy-cursors";
    package = pkgs.nordzy-cursor-theme;
    size = 22;
  };
}
