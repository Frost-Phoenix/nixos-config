{ pkgs, host, ... }: 
{
  environment.systemPackages = with pkgs; [
    gparted
  ];
}
