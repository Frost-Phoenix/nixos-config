{ pkgs, ... }:
{
  fonts = {
    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [
          "Maple Mono"
          "JetBrainsMono Nerd Font"
        ];
        sansSerif = [ "Public Sans" ];
        serif = [ "Noto Serif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };

    packages = with pkgs; [
      maple-mono-custom

      noto-fonts
      public-sans

      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only

      # twemoji-color-font
      noto-fonts-color-emoji
    ];
  };
}
