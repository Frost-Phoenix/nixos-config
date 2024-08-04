{ pkgs, ... }:
{
  home.packages = [ pkgs.hyprlock ];
  xdg.configFile."hypr/hyprlock.conf".text = ''
    # BACKGROUND
    background {
      monitor =
      path = ~/Pictures/wallpapers/others/spac.jpg
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
      text = cmd[update:1000] echo -e "$(date +"%A")"
      color = rgba(251, 241, 199, 0.85)
      font_size = 90
      font_family = SF Pro Display Bold
      position = 0, 360
      halign = center
      valign = center
    }

    # Date-Month
    label {
      monitor =
      text = cmd[update:1000] echo -e "$(date +"%d %B")"
      color = rgba(251, 241, 199, 0.85)
      font_size = 40
      font_family = SF Pro Display Bold
      position = 0, 260
      halign = center
      valign = center
    }

    # Time
    label {
      monitor =
      text = cmd[update:1000] echo "<span>$(date +"- %H:%M -")</span>"
      color = rgba(251, 241, 199, 0.85)
      font_size = 20
      font_family = SF Pro Display Bold
      position = 0, 200
      halign = center
      valign = center
    }

    # USER-BOX
    shape {
      monitor =
      size = 300, 60
      color = rgba(255, 255, 255, .2)
      rounding = -1
      border_size = 0
      border_color = rgba(255, 255, 255, 0)
      rotate = 0

      position = 0, -190
      halign = center
      valign = center
    }

    # USER
    label {
      monitor =
      text =     $USER
      color = rgba(216, 222, 233, 0.80)
      outline_thickness = 2
      dots_size = 0.25 # Scale of input-field height, 0.2 - 0.8
      dots_spacing = 0.2 # Scale of dots' absolute size, 0.0 - 1.0
      dots_center = true
      font_size = 18
      font_family = SF Pro Display Bold
      position = 0, -190
      halign = center
      valign = center
    }

    # INPUT FIELD
    input-field {
      monitor =
      size = 300, 60
      outline_thickness = 2
      dots_size = 0.22 # Scale of input-field height, 0.2 - 0.8
      dots_spacing = 0.4 # Scale of dots' absolute size, 0.0 - 1.0
      dots_center = true
      outer_color = rgba(255, 255, 255, 0)
      inner_color = rgba(255, 255, 255, 0.2)
      font_color = rgb(200, 200, 200)
      fade_on_empty = false
      font_family = SF Pro Display Bold
      placeholder_text = <i><span foreground="##ffffff99">Enter Password</span></i>
      hide_input = false
      position = 0, -270
      halign = center
      valign = center
    }
  '';
}