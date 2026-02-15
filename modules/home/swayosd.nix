{ pkgs, ... }:
{
  home.packages = with pkgs; [ swayosd ];

  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [ "swayosd-server" ];

      bind = [
        ", XF86AudioMute, exec, swayosd-client --output-volume mute-toggle"
        ", XF86AudioMicMute, exec, toggle-mic"
      ];
      bindl = [
        "$mod, XF86MonBrightnessUp, exec, swayosd-client --brightness 100"
        "$mod, XF86MonBrightnessDown, exec, swayosd-client --brightness 0"
      ];
      bindel = [
        ", XF86MonBrightnessUp, exec, swayosd-client --brightness raise"
        ", XF86MonBrightnessDown, exec, swayosd-client --brightness lower"
      ];
      binde = [
        ", XF86AudioRaiseVolume, exec, swayosd-client --output-volume +2"
        ", XF86AudioLowerVolume, exec, swayosd-client --output-volume -2"

        "$mod, f11, exec, swayosd-client --output-volume +2"
        "$mod, f12, exec, swayosd-client --output-volume -2"
      ];
      bindr = [
        "CAPS, Caps_Lock, exec, swayosd-client --caps-lock"
        ", Scroll_Lock, exec, swayosd-client --scroll-lock"
        ", Num_Lock, exec, swayosd-client --num-lock"
      ];
    };
  };

  xdg.configFile."swayosd/config.toml".text = ''
    [server]
    max_volume = 100
    show_percentage = true
  '';

  xdg.configFile."swayosd/style.css".text = ''
    window {
        padding: 0px 10px;
        border-radius: 25px;
        border: 10px;
        background: alpha(#282828, 0.99);
    }

    #container {
        margin: 15px;
    }

    image, label {
        color: #FBF1C7;
    }

    progressbar:disabled,
    image:disabled {
        opacity: 0.95;
    }

    progressbar {
        min-height: 6px;
        border-radius: 999px;
        background: transparent;
        border: none;
    }
    trough {
        min-height: inherit;
        border-radius: inherit;
        border: none;
        background: alpha(#DDDDDD, 0.2);
    }
    progress {
        min-height: inherit;
        border-radius: inherit;
        border: none;
        background: #FBF1C7;
    }
  '';
}
