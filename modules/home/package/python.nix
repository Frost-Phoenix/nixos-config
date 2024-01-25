{pkgs, ...}: 
{
  environment.systemPackages = with pkgs; [
    python3
    python311Packages.pip
    # (python311Full.withPackages(ps: with ps; [ 
    #   requests
    #   pygame
    #   shapely
    # ]))
  ];
}
