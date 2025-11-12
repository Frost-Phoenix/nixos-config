{ inputs, pkgs, ... }:
{
  imports = [ inputs.vicinae.homeManagerModules.default ];

  services.vicinae = {
    enable = true;
    package = inputs.vicinae.packages.${pkgs.system}.default;

    autoStart = true;
    useLayerShell = true;

    settings = {
      font = {
        normal = "Maple Mono";
        size = 12;
      };

      theme = {
        iconTheme = "Papirus-Dark";
        name = "gruvbox-dark-hard.json";
      };

      window = {
        csd = true;
        opacity = 1;
        rounding = 0;
      };

      faviconService = "twenty";
      popToRootOnClose = true;

      rootSearch = {
        searchFiles = true;
      };
    };

    themes = {
      gruvbox-dark-hard = {
        name = "Gruvbox Dark Hard";
        description = "Custom Gruvbox-Dark-Hard theme";

        icon = "";
        version = "1.0.0";
        appearance = "dark";

        palette = {
          background = "#1d2021";
          foreground = "#ebdbb2";
          blue = "#458588";
          green = "#98971a";
          magenta = "#b16286";
          orange = "#d65d0e";
          purple = "#b16286";
          red = "#cc241d";
          yellow = "#d79921";
          cyan = "#689d6a";
        };
      };
    };
  };
}
