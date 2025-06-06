{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [ superfile ];

  xdg.configFile."superfile/config.toml".source = ./config.toml;
}
