{ pkgs, ... }:
let 
  text = "rgb(251, 241, 199)";
in
{
  home.packages = [ pkgs.hyprlock ];
  xdg.configFile."hypr/hyprlock.conf".text = ''
    # BACKGROUND
    background {
      monitor =
      path = ~/Pictures/wallpapers/others/gruv_forest.jpg
      blur_passes = 1
      contrast = 0.8916
      brightness = 0.8172
      vibrancy = 0.1696
      vibrancy_darkness = 0.0
    }

    # GENERAL
    general {
      no_fade_in = false
      grace = 0
      disable_loading_bar = false
    }

    # Day
    label {
      monitor =
      text = cmd[update:1000] echo "- $(date +"%A, %B %d") -"
      color = rgba(242, 243, 244, 0.75)
      font_size = 20
      font_family = JetBrainsMono Nerd Font
      position = 0, 160
      halign = center
      valign = center
    }

    # Time
    label {
      monitor = 
      text = cmd[update:1000] echo "$(date +"%k:%M")"
      color = rgba(242, 243, 244, 0.75)
      font_size = 111
      font_family = JetBrainsMono Nerd Font
      position = 0, 270
      halign = center
      valign = center
    }

    # USER-BOX
    shape {
      monitor =
      size = 350, 50
      color = rgba(255, 255, 255, .2)
      rounding = 15
      border_size = 0
      border_color = rgba(255, 255, 255, 0)
      rotate = 0

      position = 0, -230
      halign = center
      valign = center
    }

    # USER
    label {
      monitor =
      text =   $USER
      color = rgba(216, 222, 233, 0.80)
      font_size = 16
      font_family = JetBrainsMono Nerd Font
      position = 0, -230
      halign = center
      valign = center
    }

    # INPUT FIELD
    input-field {
      monitor =
      size = 350, 50
      outline_thickness = 0
      rounding = 15
      dots_size = 0.25 # Scale of input-field height, 0.2 - 0.8
      dots_spacing = 0.4 # Scale of dots' absolute size, 0.0 - 1.0
      dots_center = true
      outer_color = rgba(255, 255, 255, 0)
      inner_color = rgba(255, 255, 255, 0.2)
      font_color = rgb(200, 200, 200)
      fade_on_empty = false
      placeholder_text = <i><span foreground="##ffffff99">Enter Password</span></i>
      hide_input = false
      position = 0, -300
      halign = center
      valign = center
    }
  '';
}
