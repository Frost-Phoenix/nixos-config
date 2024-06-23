{ ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:weight=bold:size=14";
        line-height = 25;
        fields = "name,generic,comment,categories,filename,keywords";
        terminal = "kitty";
        prompt = "' ➜  '" ;
        icon-theme = "Papirus-Dark";
        layer = "top";
        lines = 10;
        width = 35;
        horizontal-pad = 25;
        inner-pad = 5;
      };
      colors = {
        background = "1e1e2ecc";
        text = "cdd6f4ff";
        match = "f38ba8ff";
        selection = "b4befeaa";
        selection-match = "f38ba8ff";
        selection-text = "cdd6f4ff";
        border = "b4befeff";
      };
      border = {
        radius = 15;
        width = 3;
      };
    };
  };
}