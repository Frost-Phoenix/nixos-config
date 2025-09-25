{ pkgs, inputs, ... }:
{
  home.packages = [ inputs.superfile.packages.${pkgs.system}.default ];

  xdg.configFile."superfile/config.toml".source = ./config.toml;
}
