{ pkgs, lib, config, inputs, ... }: 
{
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      clock = true;
      datestr = "";
      screenshots = true;
      
      indicator = true;
      indicator-radius = 100;
      indicator-thickness = 7;
      
      
      effect-blur = "7x5";
      effect-vignette = "0.5:0.5";
      
      color="1e1e2e";
      bs-hl-color="f5e0dc";
      caps-lock-bs-hl-color="f5e0dc";
      caps-lock-key-hl-color="a6e3a1";
      ring-color="b4befe";
      ring-clear-color="f5e0dc";
      ring-caps-lock-color="fab387";
      ring-ver-color="89b4fa";
      ring-wrong-color="eba0ac";
      text-color="cdd6f4";
      text-clear-color="f5e0dc";
      text-caps-lock-color="fab387";
      text-ver-color="89b4fa";
      text-wrong-color="eba0ac";

      inside-color="00000000";
      inside-clear-color="00000000";
      inside-caps-lock-color="00000000";
      inside-ver-color="00000000";
      inside-wrong-color="00000000";
      key-hl-color="a6e3a1";
      layout-bg-color="00000000";
      layout-border-color="00000000";
      layout-text-color="cdd6f4";
      line-color="00000000";
      line-clear-color="00000000";
      line-caps-lock-color="00000000";
      line-ver-color="00000000";
      line-wrong-color="00000000";
      separator-color="00000000";
    };
  };

  # services.swayidle = {
  #   enable = true;
  #   events = [
  #     {
  #       event = "before-sleep";
  #       command = "${pkgs.swaylock-effects}/bin/swaylock -fF";
  #     }
  #     {
  #       event = "lock";
  #       command = "${pkgs.swaylock-effects}/bin/swaylock -fF";
  #     }
  #   ];
  #   timeouts = [
  #     {
  #       timeout = 90;
  #       command = "swaylock";
  #     }
  #     {
  #       timeout = 300;
  #       command = "systemctl suspend";
  #     }
  #     {
  #       timeout = 180;
  #       command = "systemctl suspend";
  #       # command = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms off";
  #       # resumeCommand = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms on";
  #     }
  #   ];
  # };

  # systemd.user.services.swayidle.Install.WantedBy = lib.mkForce ["hyprland-session.target"];
}
