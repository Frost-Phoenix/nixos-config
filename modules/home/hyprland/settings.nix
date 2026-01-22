{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    input = {
      kb_layout = "us,fr";
      kb_options = "grp:alt_caps_toggle";

      repeat_delay = 300;
      numlock_by_default = true;

      follow_mouse = 0;
      mouse_refocus = 0;
      float_switch_override_focus = 0;

      touchpad = {
        disable_while_typing = false;
        natural_scroll = true;
      };
    };

    general = {
      layout = "dwindle";

      gaps_in = 6;
      gaps_out = 12;
      border_size = 2;

      "col.active_border" = "rgb(98971A) rgb(CC241D) 45deg";
      "col.inactive_border" = "0x00000000";
    };

    misc = {
      disable_hyprland_logo = true;
      disable_splash_rendering = false;

      focus_on_activate = true;
      middle_click_paste = false;

      disable_autoreload = false;
    };

    dwindle = {
      force_split = 2;
      preserve_split = true;
      use_active_for_splits = true;
    };

    master = {
      new_status = "master";
    };

    decoration = {
      rounding = 0;

      blur = {
        enabled = true;

        size = 3;
        noise = 0;
        passes = 2;
        contrast = 1.4;
        brightness = 1;

        xray = true;
      };

      shadow = {
        enabled = true;

        range = 20;
        render_power = 3;

        offset = "0 2";
        color = "rgba(00000055)";
      };
    };

    animations = {
      enabled = true;

      bezier = [
        "fluent_decel, 0, 0.2, 0.4, 1"
        "easeOutCirc, 0, 0.55, 0.45, 1"
        "easeOutCubic, 0.33, 1, 0.68, 1"
        "fade_curve, 0, 0.55, 0.45, 1"
      ];

      animation = [
        # name, enable, speed, curve, style

        # Windows
        "windowsIn,   0, 4, easeOutCubic,  popin 20%" # window open
        "windowsOut,  0, 4, fluent_decel,  popin 80%" # window close.
        "windowsMove, 1, 2, fluent_decel, slide" # everything in between, moving, dragging, resizing.

        # Fade
        "fadeIn,      1, 3,   fade_curve" # fade in (open) -> layers and windows
        "fadeOut,     1, 3,   fade_curve" # fade out (close) -> layers and windows
        "fadeSwitch,  0, 1,   easeOutCirc" # fade on changing activewindow and its opacity
        "fadeShadow,  1, 10,  easeOutCirc" # fade on changing activewindow for shadows
        "fadeDim,     1, 4,   fluent_decel" # the easing of the dimming of inactive windows
        # "border,      1, 2.7, easeOutCirc"  # for animating the border's color switch speed
        # "borderangle, 1, 30,  fluent_decel, once" # for animating the border's gradient angle - styles: once (default), loop
        "workspaces,  1, 4,   easeOutCubic, fade" # styles: slide, slidevert, fade, slidefade, slidefadevert
      ];
    };

    xwayland = {
      force_zero_scaling = true;
    };
  };
}
