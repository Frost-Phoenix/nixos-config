{ pkgs, ... }:
let
  nsearch = pkgs.writeShellScriptBin "nsearch" (
    builtins.readFile ./nix-search.sh
  );
in
{
  home.packages = with pkgs; [
    nix-search-tv
    nsearch
  ];

  xdg.configFile."nix-search-tv/config.json".source = ./config.json;
}
