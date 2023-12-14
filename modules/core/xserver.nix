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
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
