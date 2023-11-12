{ pkgs, ... }: 
{
  services.xserver = {
    enable = true;
    layout = "us";
    displayManager.autoLogin = {
      enable = true;
      user = "frostphoenix";
    };
    libinput = {
      enable = true;
      # mouse = {
      #   accelProfile = "flat";
      # };
    };
  };
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
