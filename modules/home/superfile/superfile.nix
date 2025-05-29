{ pkgs, inputs, ... }:
let
  superfile = inputs.superfile.packages.${pkgs.system}.default;
in
{
  home.packages = [ superfile ];

  xdg.configFile."superfile/config.toml".source = ./config.toml;
  xdg.configFile."superfile/theme/gruvbox-dark-hard.toml".source = ./gruvbox-dark-hard.toml;
}
