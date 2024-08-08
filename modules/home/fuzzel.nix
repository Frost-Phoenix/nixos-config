{ ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:weight=bold:size=15";
        line-height = 25;
        fields = "name,generic,comment,categories,filename,keywords";
        terminal = "kitty";
        prompt = "'➜ '" ;
        icon-theme = "Papirus-Dark";
        layer = "top";
        lines = 10;
        width = 25;
        horizontal-pad = 25;
        inner-pad = 5;
      };
      colors = {
        background = "1D2021FF";
        text = "FBF1C7FF";
        match = "98971AFF";
        selection = "FBF1C722";
        selection-match = "98971AFF";
        selection-text = "FBF1C7FF";
        border = "D65D0EFF";
      };
      border = {
        radius = 5;
        width = 2;
      };
    };
  };
}
