{lib, ...}: {
  os.nixpkgs.overlays = [
    (_final: prev: let
      inherit (prev.nur.repos.rycee.firefox-addons) buildFirefoxXpiAddon;
    in {
      firefox-addons = {
        better-history-ng = buildFirefoxXpiAddon {
          pname = "better-history-ng";
          version = "1.0.2";
          addonId = "{058af685-fc17-47a4-991a-bab91a89533d}";
          url = "https://github.com/Christoph-Wagner/firefox-better-history-ng/releases/download/v1.0.2/2c2e37a17c4a4d558bd0-1.0.2.xpi";
          sha256 = "sha256-ryl34Z8pRJhrBgvksqnx678pLKV0YOau61tnJGvk4K8=";
          meta = with lib; {
            homepage = "https://github.com/Christoph-Wagner/firefox-better-history-ng";
            description = "A Better History page inspired by Vivaldi tent";
            license = licenses.unlicense;
            platforms = platforms.all;
          };
        };
      };
    })
  ];
}