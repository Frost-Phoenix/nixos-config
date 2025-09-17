{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    inputs.superfile.packages."${system}".default
  ];

  xdg.configFile."superfile/config.toml".source = ./config.toml;
}
