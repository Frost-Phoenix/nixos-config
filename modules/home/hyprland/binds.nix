{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    binds = {
      scroll_event_delay = 100;
      movefocus_cycles_fullscreen = true;
    };

    bind = [
      # show keybinds list
      "$mod, F1, exec, show-keybinds"

      # keybindings
      "$mod, Return, exec, ghostty --gtk-single-instance=true"
      "ALT, Return, exec, [float; size 1111 700] ghostty"
      "$mod SHIFT, Return, exec, [fullscreen] ghostty"
      "$mod, B, exec, [workspace 1 silent] zen-beta"
      "$mod, Q, killactive,"
      "$mod, F, fullscreen, 0"
      "$mod SHIFT, F, fullscreen, 1"
      "$mod, Space, exec, toggle-float"
      "$mod, D, exec, toggle-rofi rofi -show drun"
      "$mod SHIFT, D, exec, vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland"
      "$mod SHIFT, S, exec, hyprctl dispatch exec '[workspace 5 silent] SoundWireServer'"
      "$mod, Escape, exec, swaylock"
      "ALT, Escape, exec, hyprlock"
      "$mod SHIFT, Escape, exec, power-menu"
      "$mod, P, pseudo,"
      "$mod, X, togglesplit,"
      "$mod, T, exec, toggle-oppacity"
      "$mod, E, exec, nemo"
      "ALT, E, exec, hyprctl dispatch exec '[float; size 1111 700] nemo'"
      "$mod SHIFT, B, exec, toggle-waybar"
      "$mod, C ,exec, hyprpicker -a"
      "$mod, W,exec, wallpaper-picker"
      "$mod SHIFT, W,exec, hyprctl dispatch exec '[float; size 925 615] waypaper'"
      "$mod, N, exec, swaync-client -t -sw"
      "CTRL SHIFT, Escape, exec, hyprctl dispatch exec '[workspace 9] missioncenter'"
      "$mod, equal, exec, woomer"
      # "$mod SHIFT, W, exec, vm-start"

      # screenshot
      ",Print, exec, screenshot --copy"
      "$mod, Print, exec, screenshot --save"
      "$mod SHIFT, Print, exec, screenshot --swappy"

      # OCR
      "$mod CTRL, O, exec, ocr"

      # switch focus
      "$mod, left,  movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up,    movefocus, u"
      "$mod, down,  movefocus, d"
      "$mod, h, movefocus, l"
      "$mod, j, movefocus, d"
      "$mod, k, movefocus, u"
      "$mod, l, movefocus, r"

      "$mod, left,  alterzorder, top"
      "$mod, right, alterzorder, top"
      "$mod, up,    alterzorder, top"
      "$mod, down,  alterzorder, top"
      "$mod, h, alterzorder, top"
      "$mod, j, alterzorder, top"
      "$mod, k, alterzorder, top"
      "$mod, l, alterzorder, top"

      "CTRL ALT, up, exec, hyprctl dispatch focuswindow floating"
      "CTRL ALT, down, exec, hyprctl dispatch focuswindow tiled"

      # switch workspace
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # same as above, but switch to the workspace
      "$mod SHIFT, 1, movetoworkspacesilent, 1" # movetoworkspacesilent
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod SHIFT, 6, movetoworkspacesilent, 6"
      "$mod SHIFT, 7, movetoworkspacesilent, 7"
      "$mod SHIFT, 8, movetoworkspacesilent, 8"
      "$mod SHIFT, 9, movetoworkspacesilent, 9"
      "$mod SHIFT, 0, movetoworkspacesilent, 10"
      "$mod CTRL, c, movetoworkspace, empty"

      # window control
      "$mod SHIFT, left, movewindow, l"
      "$mod SHIFT, right, movewindow, r"
      "$mod SHIFT, up, movewindow, u"
      "$mod SHIFT, down, movewindow, d"
      "$mod SHIFT, h, movewindow, l"
      "$mod SHIFT, j, movewindow, d"
      "$mod SHIFT, k, movewindow, u"
      "$mod SHIFT, l, movewindow, r"

      "$mod CTRL, left, resizeactive, -80 0"
      "$mod CTRL, right, resizeactive, 80 0"
      "$mod CTRL, up, resizeactive, 0 -80"
      "$mod CTRL, down, resizeactive, 0 80"
      "$mod CTRL, h, resizeactive, -80 0"
      "$mod CTRL, j, resizeactive, 0 80"
      "$mod CTRL, k, resizeactive, 0 -80"
      "$mod CTRL, l, resizeactive, 80 0"

      "$mod ALT, left, moveactive,  -80 0"
      "$mod ALT, right, moveactive, 80 0"
      "$mod ALT, up, moveactive, 0 -80"
      "$mod ALT, down, moveactive, 0 80"
      "$mod ALT, h, moveactive,  -80 0"
      "$mod ALT, j, moveactive, 0 80"
      "$mod ALT, k, moveactive, 0 -80"
      "$mod ALT, l, moveactive, 80 0"

      # media and volume controls
      # ",XF86AudioMute,exec, pamixer -t"
      ",XF86AudioPlay,exec, playerctl play-pause"
      ",XF86AudioNext,exec, playerctl next"
      ",XF86AudioPrev,exec, playerctl previous"
      ",XF86AudioStop,exec, playerctl stop"

      "$mod, mouse_down, workspace, e-1"
      "$mod, mouse_up, workspace, e+1"

      # clipboard manager
      "$mod, V, exec, toggle-rofi \"cliphist list | rofi -dmenu -theme-str 'window {width: 50%;} listview {columns: 1;}' | cliphist decode | wl-copy\""
    ];

    # mouse binding
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
