{ pkgs, ... }:
{
  programs = {
    steam = {
      enable = true;

      gamescopeSession.enable = true;

      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    gamescope = {
      enable = true;
      capSysNice = true;
      args = [
        "--rt"
        "--expose-wayland"
      ];
    };
  };

  hardware.steam-hardware.enable = true;
  services.joycond.enable = true;
}
