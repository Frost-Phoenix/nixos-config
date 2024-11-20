{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # discord
    # (discord.override {
    #  withVencord = true;
    # })
    webcord-vencord
  ];
  xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;
}
