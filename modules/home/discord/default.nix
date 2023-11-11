{ pkgs, lib, ... }: 
{
  home.packages = with pkgs; [
    discord
    webcord-vencord
  ];
  
  nixpkgs.overlays = [
    (_final: prev: {
      webcord-vencord = prev.webcord-vencord.override {
        # Patch webcord
        webcord = prev.webcord.overrideAttrs (old: {
          patches = (old.patches or []) ++ [./webcord/unwritable-config.patch];
        });

        # Patch vencord
        vencord-web-extension = prev.vencord-web-extension.overrideAttrs (old: {
          patches =
            (old.patches or [])
            ++ [
              (prev.runCommand "vencord-settings-patch" {
                  nativeBuildInputs = with prev; [jq];
                } ''
                  export settings=$(jq -c '.settings' < ${./vencord/exported-settings.json})
                  substituteAll ${./vencord/declarative-settings.patch} $out
                '')
            ];
        });
      };
    })
  ];

  xdg.configFile."WebCord/Themes/amoled-cord".source = pkgs.substituteAll {
    src = ./themes/theme.css;
  };
  xdg.configFile."WebCord/config.json".source = ./webcord/config.json;
}