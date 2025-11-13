{ inputs, ... }:
{
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = false;
    packages = [ "com.github.tchx84.Flatseal" ];
    overrides = {
      global = {
        # Force Wayland by default
        Context.sockets = [
          "wayland"
          "!x11"
          "!fallback-x11"
        ];
      };
    };
  };
}
