{ pkgs, inputs, ... }:
let
  system = pkgs.stdenv.hostPlatform.system;
  superfile = inputs.superfile.packages.${system}.default;
in
{
  home.packages = [
    (superfile.overrideAttrs (oldAttrs: {
      doCheck = false;
    }))
  ];

  xdg.configFile."superfile/config.toml".source = ./config.toml;
}
