{ pkgs, lib, inputs, ...}: 
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in 
{
    
  imports = [inputs.spicetify-nix.homeManagerModules.default];

  programs.spicetify = {
    enable = true;
     enabledExtensions = with spicePkgs.extensions; [
       adblock
       hidePodcasts
       lastfm
       shuffle # shuffle+ (special characters are sanitized out of extension names)
     ];
     theme = spicePkgs.themes.onepunch;
       colorScheme = "gruvbox-material-dark";
  };
}
