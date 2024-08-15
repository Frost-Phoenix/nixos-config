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
        selection = "FBF1C733";
        selection-text = "FBF1C7FF";
        # selection = "FBF1C7FF";
        # selection-text = "1D2021FF";
        selection-match = "98971AFF";
        # border = "98971AFF";
        border = "#D5C4A1EE";
      };
      border = {
        radius = 2;
        width = 2;
      };
    };
  };
}
