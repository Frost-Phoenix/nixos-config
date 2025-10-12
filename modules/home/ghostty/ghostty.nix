{ host, ... }:
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      ##### Font #####
      font-family = [
        "Maple Mono"
        # "DejaVu Sans"
      ];
      font-size = "${if (host == "laptop") then "16" else "17"}";
      font-feature = [
        "calt"
        "ss03"
      ];

      ##### Theme #####
      theme = "gruvbox";
      background-opacity = 0.5;
      adjust-cursor-thickness = 1;

      selection-clear-on-copy = true;
      mouse-hide-while-typing = true;

      ##### Window #####;
      window-padding-balance = true;
      window-padding-color = "extend";
      window-decoration = "none";
      window-theme = "ghostty";
      window-inherit-working-directory = false;

      resize-overlay = "never";
      confirm-close-surface = false;
      app-notifications = "no-clipboard-copy";

      bell-features = "no-attention,no-audio,no-system,no-title,no-border";

      gtk-single-instance = false;
      gtk-tabs-location = "bottom";
      gtk-wide-tabs = false;
      gtk-custom-css = "styles/tabs.css";

      auto-update = "off";

      clipboard-paste-protection = false;

      ##### Keybinds #####
      keybind = [
        "shift+end=unbind"
        "shift+home=unbind"
        "ctrl+shift+left=unbind"
        "ctrl+shift+right=unbind"
        "shift+enter=text:\n"
      ];
    };

    themes.gruvbox = {
      background = "1d2021";
      foreground = "fbf1c7";

      cursor-color = "D5C4A1";

      selection-background = "cell-foreground";
      selection-foreground = "cell-background";

      palette = [
        "0=32302f"
        "1=cc241d"
        "2=98971a"
        "3=d79921"
        "4=458588"
        "5=b16286"
        "6=689d6a"
        "7=ebdbb2"

        "8=928374"
        "9=fb4934"
        "10=b8bb26"
        "11=fabd2f"
        "12=83a598"
        "13=d3869b"
        "14=8ec07c"
        "15=fbf1c7"
      ];
    };
  };

  xdg.configFile."ghostty/styles/tabs.css".source = ./styles/tabs.css;
}
