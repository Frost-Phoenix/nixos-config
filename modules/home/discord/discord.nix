{ pkgs, ... }: 
{
  home.packages = with pkgs; [
    # discord
    (discord.override { 
     withVencord = true; 
    })
  ];
  xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;
}
