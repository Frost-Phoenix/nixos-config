{ pkgs, inputs, ... }:
{

  imports = [ inputs.nix-gaming.nixosModules.platformOptimizations ];

  programs = {
    steam = {
      enable = true;
        
      platformOptimizations.enable = true;

      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;

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
}
