{ pkgs, ... }:
let
  jonathanharty.gruvbox-material-icon-theme =
    pkgs.vscode-utils.buildVscodeMarketplaceExtension
      {
        mktplcRef = {
          name = "gruvbox-material-icon-theme";
          publisher = "JonathanHarty";
          version = "1.1.5";
          hash = "sha256-86UWUuWKT6adx4hw4OJw3cSZxWZKLH4uLTO+Ssg75gY=";
        };
      };
  imanolea.z80-asm =
    pkgs.vscode-utils.buildVscodeMarketplaceExtension
      {
        mktplcRef = {
          name = "z80-asm";
          publisher = "imanolea";
          version = "0.0.9";
          hash = "sha256-uiSEZg9aSMRwdBWAyNtfk9z+3TPflWAv7SKy6qdhvWw=";
        };
      };
in
{
  programs.vscodium.profiles.default = {
    extensions = with pkgs.vscode-extensions; [
      ## Languages
      jnoortheen.nix-ide
      arrterian.nix-env-selector
      llvm-vs-code-extensions.vscode-clangd
      ziglang.vscode-zig
      yzhang.markdown-all-in-one
      imanolea.z80-asm

      ## Color scheme
      jdinhlife.gruvbox
      jonathanharty.gruvbox-material-icon-theme
    ];
  };
}
