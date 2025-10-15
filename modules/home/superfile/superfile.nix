{ pkgs, inputs, ... }:
let
  superfile = inputs.superfile.packages.${pkgs.system}.default;
in
{
  home.packages = [
    (superfile.overrideAttrs (oldAttrs: {
      doCheck = false;
    }))
  ];

  xdg.configFile."superfile/config.toml".source = ./config.toml;
}
