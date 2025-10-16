{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nix-index-database.homeModules.nix-index
  ];

  programs = {
    nix-index = {
      enable = true;
      symlinkToCacheHome = true;
      enableZshIntegration = false;
    };

    nix-index-database.comma.enable = true;
  };

  home.packages = with pkgs; [
    nvd                               # Nix/NixOS package version diff tool
    nix-du                            # Tool to determine which gc-roots take space in your nix store
    nix-btm                           # Bottom-like system monitor for nix
    nix-web                           # Web interface for the Nix store
    nix-tree                          # Interactively browse a Nix store paths dependencies
    nix-melt                          # Ranger-like flake.lock viewer
    nix-output-monitor                # Processes output of Nix commands to show helpful and pretty information
    nixtract                          # A CLI tool to extract the graph of derivations from a Nix flake
  ];
}
