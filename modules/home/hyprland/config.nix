{ ... }:
let
  color = (import ../../variables/colors.nix);
  window_manager = (import ../../variables/window_manager.nix);
in
{
  wayland.windowManager.hyprland = {
    extraConfig = "
      $mainMod = SUPER

      monitor=,preferred,auto,auto
      monitor=,1920x1200,auto,auto

      # autostart
      exec-once = systemctl --user import-environment &
      exec-once = hash dbus-update-activation-environment 2>/dev/null &
      exec-once = dbus-update-activation-environment --systemd &
      exec-once = swaybg -m fill -i ~/Pictures/wallpapers/wallpaper.png &
      exec-once = sleep 1 && swaylock
      exec-once = hyprctl setcursor Catppuccin-Frappe-Dark 15 &
      exec-once = waybar &
      exec-once = mako &

      input {
          kb_layout = us
          numlock_by_default = true
          follow_mouse = 1
          sensitivity = 0
      }

      misc {
          disable_autoreload = true
          disable_hyprland_logo = true
          always_follow_on_dnd = true
          layers_hog_keyboard_focus = true
          animate_manual_resizes = false
          enable_swallow = true
          # swallow_regex =
          focus_on_activate = true
      }

      general {
          layout = dwindle

          gaps_in = 5
          gaps_out = 10
          border_size = 2
          col.active_border = rgb(cba6f7) rgb(94e2d5) 45deg
          col.inactive_border = 0x00000000
      }

      xwayland {
        force_zero_scaling = true
      }

      dwindle {
          no_gaps_when_only = false
          force_split = 0
          special_scale_factor = 1.0
          split_width_multiplier = 1.0
          use_active_for_splits = true
          pseudotile = yes
          preserve_split = yes
      }

      master {
          new_is_master = true
          special_scale_factor = 1
          no_gaps_when_only = false
      }

      decoration {
          rounding = 10
          
          active_opacity = 0.75;
          inactive_opacity = 0.75;
          fullscreen_opacity = 1.0;

          blur {
            new_optimizations = true
            enabled = 1
            size = 4
            passes = 4
            xray = true
          }

          drop_shadow = 0
      }


    animations {
        enabled = true
        
        bezier = fluent_decel, 0, 0.2, 0.4, 1
        bezier = easeOutCirc, 0, 0.55, 0.45, 1
        bezier = easeOutCubic, 0.33, 1, 0.68, 1
        bezier = easeinoutsine, 0.37, 0, 0.63, 1

        # Windows
        animation = windowsIn, 1, 3, easeOutCubic, popin 30% # window open
        animation = windowsOut, 1, 3, fluent_decel, popin 70% # window close.
        animation = windowsMove, 1, 2, easeinoutsine, slide # everything in between, moving, dragging, resizing.
        
        # Fade
        animation = fadeIn, 1, 3, easeOutCubic  # fade in (open) -> layers and windows
        animation = fadeOut, 1, 1.7, easeOutCubic # fade out (close) -> layers and windows
        animation = fadeSwitch, 0, 1, easeOutCirc # fade on changing activewindow and its opacity
        animation = fadeShadow, 1, 10, easeOutCirc # fade on changing activewindow for shadows
        animation = fadeDim, 1, 4, fluent_decel # the easing of the dimming of inactive windows
        animation = border, 1, 2.7, easeOutCirc # for animating the border's color switch speed
        animation = borderangle, 1, 30, fluent_decel, once # for animating the border's gradient angle - styles: once (default), loop
        animation = workspaces, 1, 3, easeOutCubic, fade # styles: slide, slidevert, fade, slidefade, slidefadevert
    }


      # ----------------------------------------------------------------
      
      # keybindings
      bind = $mainMod, Return, exec, kitty
      bind = $mainMod, Q, killactive,
      bind = $mainMod, F, fullscreen,
      bind = $mainMod, Space, togglefloating,
      bind = $mainMod, $mainMod, exec, pkill wofi || wofi --show drun
      bind = $mainMod, Escape, exec, swaylock
      bind = $mainMod, Suppr, exec, pkill wlogout || wlogout -b 4
      # bind = SUPER, V, exec, cliphist list | wofi -dmenu | cliphist decode | wl-copy
      bind = $mainMod, P, pseudo,
      bind = $mainMod, J, togglesplit,
      bind = $mainMod, E, exec, thunar
      bind = $mainMod, B, exec, pkill -SIGUSR1 .waybar-wrapped
      bind = $mainMod, C ,exec, hyprpicker -a
      bind = $mainMod, G,exec, $HOME/.local/bin/toggle_layout
      bind = $mainMod, W,exec, pkill wofi || wallpaper-picker
      
      # screenshot
      bind = ,Print, exec, grimblast --notify --cursor save area ~/Pictures/$(date ' + %Y-%m-%d ' T '%H:%M:%S ').png
      bind = $mainMod, Print, exec, grimblast --notify --cursor  copy area
      
      # switch focus
      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d
      
      # switch workspace
      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5
      bind = $mainMod, 6, workspace, 6
      bind = $mainMod, 7, workspace, 7
      bind = $mainMod, 8, workspace, 8
      bind = $mainMod, 9, workspace, 9
      bind = $mainMod, 0, workspace, 10
      
      # same as above, but switch to the workspace
      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10
      bind = $mainMod CTRL, c, movetoworkspace, empty
      
      # window control
      bind = SUPER SHIFT, left, movewindow, l
      bind = SUPER SHIFT, right, movewindow, r
      bind = SUPER SHIFT, up, movewindow, u
      bind = SUPER SHIFT, down, movewindow, d
      bind = SUPER CTRL, left, resizeactive, -80 0
      bind = SUPER CTRL, right, resizeactive, 80 0
      bind = SUPER CTRL, up, resizeactive, 0 -80
      bind = SUPER CTRL, down, resizeactive, 0 80
      bind = SUPER ALT, left, moveactive,  -80 0
      bind = SUPER ALT, right, moveactive, 80 0
      bind = SUPER ALT, up, moveactive, 0 -80
      bind = SUPER ALT, down, moveactive, 0 80
      
      # media and volume controls
      bind = ,XF86AudioRaiseVolume,exec, pamixer -i 2
      bind = ,XF86AudioLowerVolume,exec, pamixer -d 2
      bind = ,XF86AudioMute,exec, pamixer -t
      bind = ,XF86AudioPlay,exec, playerctl play-pause
      bind = ,XF86AudioNext,exec, playerctl next
      bind = ,XF86AudioPrev,exec, playerctl previous
      bind = , XF86AudioStop, exec, playerctl stop
      bind = $mainMod, mouse_down, workspace, e-1
      bind = $mainMod, mouse_up, workspace, e+1
      
      # mouse binding
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow
      
      # windowrule
      windowrule = float,wlogout
      windowrule = float,wofi
      windowrule = noanim,wlogout
      windowrule = noanim,wofi
      windowrule = pin,wofi
      windowrule = noborder,wofi
      windowrule = tile, neovide
      windowrule = idleinhibit focus,mpv
      windowrule = float,udiskie
      windowrule = float,title:^(Transmission)$
      windowrule = float,title:^(Volume Control)$
      windowrule = float,title:^(Firefox — Sharing Indicator)$
      windowrule = move 0 0,title:^(Firefox — Sharing Indicator)$
      windowrule = size 700 450,title:^(Volume Control)$
      windowrule = move 40 55%,title:^(Volume Control)$
      windowrulev2 = float, title:^(Picture-in-Picture)$
      windowrulev2 = opacity 1.0 override 1.0 override, title:^(Picture-in-Picture)$
      windowrulev2 = pin, title:^(Picture-in-Picture)$
      windowrule = float,imv
      windowrule = move 510 290,imv
      windowrule = size 900 500,imv
      windowrule = float,mpv
      windowrule = move 510 290,mpv
      windowrule = size 900 500,mpv
      windowrulev2 = idleinhibit focus, class:^(mpv)$
      windowrulev2 = idleinhibit fullscreen, class:^(firefox)$
    ";
  };
}
