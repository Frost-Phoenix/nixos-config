{ pkgs, ... }: 
{
  networking = {
    hostName = "nixos";
    # networkmanager.enable = true;
    # wireless.iwd.enable = true;
    # networkmanager.wifi.backend = "iwd";
    wireless.enable = true;
    wireless.userControlled.enable = true;
    nameservers = [ "1.1.1.1" ];
  };

  environment.systemPackages = with pkgs; [
    wpa_supplicant
    # iwd
  ];
}
