{ host, ... }:
{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
        fractional_scaling = 0;
      };

      background = [
        {
          path = "${../../../wallpapers/otherWallpaper/gruvbox/forest_road.jpg}";

          color = "rgba(29, 32, 33, 255)";
          blur_passes = 2;
          vibrancy_darkness = 0.0;
        }
      ];

      shape = [
        # User box
        {
          size = "300, 50";

          rounding = 0;
          border_size = 2;
          color = "rgba(102, 92, 84, 0.33)";
          border_color = "rgba(168, 153, 132, 0.95)";

          position = "0, ${if host == "laptop" then "120" else "270"}";
          halign = "center";
          valign = "bottom";
        }
      ];

      label = [
        # Time
        {
          text = ''cmd[update:1000] echo "$(date +'%k:%M')"'';

          font_size = 115;
          font_family = "Maple Mono Bold";

          shadow_passes = 3;
          color = "rgba(235, 219, 178, 0.9)";

          position = "0, ${if host == "laptop" then "-25" else "-150"}";
          halign = "center";
          valign = "top";
        }
        # Date
        {
          text = ''cmd[update:1000] echo "- $(date +'%A, %B %d') -" '';

          font_size = 18;
          font_family = "Maple Mono";

          shadow_passes = 3;
          color = "rgba(235, 219, 178, 0.9)";

          position = "0, ${if host == "laptop" then "-225" else "-350"}";
          halign = "center";
          valign = "top";
        }
        # Username
        {
          text = "  $USER";

          font_size = 15;
          font_family = "Maple Mono Bold";

          color = "rgba(235, 219, 178, 1)";

          position = "0, ${if host == "laptop" then "134" else "284"}";
          halign = "center";
          valign = "bottom";
        }
      ];

      input-field = [
        {
          size = "300, 50";
          rounding = 0;
          outline_thickness = 2;

          dots_spacing = 0.4;

          font_color = "rgba(235, 219, 178, 0.9)";
          font_family = "Maple Mono Bold";

          outer_color = "rgba(168, 153, 132, 0.95)";
          inner_color = "rgba(102, 92, 84, 0.33)";
          check_color = "rgba(152, 151, 26, 0.95)";
          fail_color = "rgba(204, 36, 29, 0.95)";
          capslock_color = "rgba(215, 153, 33, 0.95)";
          bothlock_color = "rgba(215, 153, 33, 0.95)";

          hide_input = false;
          fade_on_empty = false;
          placeholder_text = ''<i><span foreground="##fbf1c7">Enter Password</span></i>'';

          position = "0, ${if host == "laptop" then "50" else "200"}";
          halign = "center";
          valign = "bottom";
        }
      ];

      animation = [ "inputFieldColors, 0" ];
    };
  };
}
