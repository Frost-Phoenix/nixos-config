{ ... }: 
let 
  custom = {
    font = "JetBrainsMono Nerd Font";
    fontsize = "12";
    primary_accent = "cba6f7";
    secondary_accent= "89b4fa";
    tertiary_accent = "f5f5f5";
    background = "11111B";
    opacity = "0.98";
    cursor = "Numix-Cursor";
    palette = rec {
      primary_accent_hex = "cba6f7";
      secondary_accent_hex = "89b4fa";
      tertiary_accent_hex = "f5f5f5";
      primary_background_hex = "11111B";
      secondary_background_hex = "1b1b2b";
      tertiary_background_hex = "25253a";

      primary_accent_rgba = "rgba(203,166,247,${opacity})";
      secondary_accent_rgba = "rgba(137,180,250,${opacity})";
      tertiary_accent_rgba = "rgba(245,245,245,${opacity})";
      primary_background_rgba = "rgba(17,17,27,${opacity})";
      secondary_background_rgba = "rgba(27,27,43,${opacity})";
      tertiary_background_rgba = "rgba(37,37,58,${opacity})";

      opacity = "1";
    };
  };
in
{
  _module.args = { inherit custom; };
  imports =  [ (import ./waybar.nix)   ]
          ++ [ (import ./settings.nix) ]
          ++ [ (import ./style.nix)    ];
}
