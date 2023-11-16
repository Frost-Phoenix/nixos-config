{ ... }: 
{
  networking = {
    hostName = "nixos";
    # networkmanager.enable = true;
    wireless.enable = true;
    wireless.userControlled.enable = true;
    nameservers = [ "1.1.1.1" ];
  };
}
