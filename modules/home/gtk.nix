{ lib, pkgs, host, ... }:
let
  gtk-theme-name = "Colloid-Green-Dark-Gruvbox";
  gtk-theme = pkgs.colloid-gtk-theme.override {
    colorVariants = [ "dark" ];
    themeVariants = [ "green" ];
    tweaks = [
      "gruvbox"
      "rimless"
      "float"
    ];
  };
  icon-theme-name = "Papirus-Dark";
in
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.caskaydia-cove
    nerd-fonts.symbols-only
    twemoji-color-font
    noto-fonts-color-emoji
    fantasque-sans-mono
    maple-mono-custom
  ];

  gtk = {
    enable = true;
    font = {
      name = "Maple Mono";
      size = if (host == "p14s") then 14 else 12;
    };
    theme = {
      name = gtk-theme-name;
      package = gtk-theme;
    };
    iconTheme = {
      name = icon-theme-name;
      package = pkgs.papirus-icon-theme.override { color = "green"; };
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };

    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = lib.mkForce true;
      };
    };

    gtk4 = {
      theme = {
        name = gtk-theme-name;
        package = gtk-theme;
      };
      extraConfig = {
        gtk-application-prefer-dark-theme = lib.mkForce true;
      };
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = gtk-theme-name;
      icon-theme = icon-theme-name;
      color-scheme = "prefer-dark";
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}
