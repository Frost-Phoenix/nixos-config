{ inputs, pkgs, ... }:
let
  system = pkgs.stdenv.hostPlatform.system;
in
{
  imports = [ inputs.vicinae.homeManagerModules.default ];

  services.vicinae = {
    enable = true;
    package = inputs.vicinae.packages.${system}.default;

    autoStart = true;
    useLayerShell = true;

    settings = {
      font = {
        normal = "Maple Mono";
        size = 12;
      };

      theme = {
        iconTheme = "Papirus-Dark";
        name = "custom";
      };

      window = {
        csd = true;
        opacity = 1;
        rounding = 0;
      };

      faviconService = "twenty";
      popToRootOnClose = true;
      closeOnFocusLoss = true;

      rootSearch = {
        searchFiles = true;
      };
    };

#     themes = {
#       gruvbox-dark-hard = {
#         meta = {
#           name = "Gruvbox Dark Hard";
#           description = "Custom Gruvbox-Dark-Hard theme";
#
#           icon = "";
#           version = 1;
#           variant = "dark";
#         };
#
#         colors = {
#           core = {
#             background = "#1d2021";
#             foreground = "#ebdbb2";
#             secondary_background = "#282828";
#             border = "#A89984";
#             accent = "#98971a";
#           };
#
#           accents = {
#             blue = "#458588";
#             green = "#98971a";
#             magenta = "#b16286";
#             orange = "#d65d0e";
#             purple = "#b16286";
#             red = "#cc241d";
#             yellow = "#d79921";
#             cyan = "#689d6a";
#           };
#         };
#       };
#    };
  };

  home.file.".local/share/vicinae/themes/custom.toml".text = ''
    [meta]
    name = "Gruvbox Dark Hard"
    description = "Custom Gruvbox-Dark-Hard theme"
    icon = ""
    version = 1
    variant = "dark"

    [colors.core]
    background = "#1d2021"
    foreground = "#ebdbb2"
    secondary_background = "#282828"
    border = "#928374"
    accent = "#98971a"

    [colors.accents]
    blue = "#458588"
    green = "#98971a"
    magenta = "#b16286"
    orange = "#d65d0e"
    purple = "#b16286"
    red = "#cc241d"
    yellow = "#d79921"
    cyan = "#689d6a"
  '';
}
