{ pkgs, username, ... }: 
{
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    
    libinput = {
      enable = true;
      # mouse = {
      #   accelProfile = "flat";
      # };
    };
  };
  services.displayManager.autoLogin = {
    enable = true;
    user = "${username}";
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
