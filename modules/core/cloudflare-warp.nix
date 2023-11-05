{ pkgs, ... }: {
  systemd.packages = with pkgs; [
  (cloudflare-warp.overrideAttrs (old: {
      src = pkgs.fetchurl {
        url = "https://pkg.cloudflareclient.com/pool/jammy/main/c/cloudflare-warp/cloudflare-warp_2023.3.470-1_amd64.deb";
        sha256 = "sha256-AYnmisEQKFiEB2iRJifEqRbdzAyBcfrU0ITeUokKLag=";
      };
      unpackPhase = null;
    }))
  ];

  systemd.services."warp-svc".wantedBy = [ "multi-user.target" ];

  environment.systemPackages = with pkgs;[
  (cloudflare-warp.overrideAttrs (old: {
      src = pkgs.fetchurl {
        url = "https://pkg.cloudflareclient.com/pool/jammy/main/c/cloudflare-warp/cloudflare-warp_2023.3.470-1_amd64.deb";
        sha256 = "sha256-AYnmisEQKFiEB2iRJifEqRbdzAyBcfrU0ITeUokKLag=";
      };
      unpackPhase = null;
    }))

  ];
}
