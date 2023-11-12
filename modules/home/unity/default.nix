{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    unityhub
  ];
}