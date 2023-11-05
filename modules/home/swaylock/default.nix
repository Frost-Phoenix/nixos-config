{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  # home.packages = with pkgs; [swaylock-effects];
  
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      clock = true;
      screenshots = true;
      indicator = true;
      indicator-radius = 100;
      indicator-thickness = 7;
      effect-blur = "7x5";
      effect-vignette = "0.5:0.5";
      ring-color = "3b4252";
      key-hl-color = "880033";
      line-color = "00000000";
      inside-color = "00000088";
      separator-color = "00000000";
    };
  };

  services.swayidle = {
    enable = true;
    events = [
      {
        event = "before-sleep";
        command = "${pkgs.swaylock-effects}/bin/swaylock -fF";
      }
      {
        event = "lock";
        command = "${pkgs.swaylock-effects}/bin/swaylock -fF";
      }
    ];
    timeouts = [
      {
        timeout = 90;
        command = "swaylock";
      }
      {
        timeout = 300;
        command = "systemctl suspend";
      }
      # {
      #   timeout = 180;
      #   command = "systemctl suspend";
      #   # command = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms off";
      #   # resumeCommand = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms on";
      # }
    ];
  };

  systemd.user.services.swayidle.Install.WantedBy = lib.mkForce ["hyprland-session.target"];
}
