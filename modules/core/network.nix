{ pkgs, ... }: 
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    # wireless.iwd.enable = true;
    # networkmanager.wifi.backend = "iwd";
    nameservers = [ "1.1.1.1" ];
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
