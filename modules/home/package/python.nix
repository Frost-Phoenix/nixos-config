{pkgs, ...}: 
{
  environment.systemPackages = with pkgs; [
    (python311Full.withPackages(ps: with ps; [ 
      requests
      github-email-explorer
      pygame
      shapely
    ]))
  ];
}
