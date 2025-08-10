{ inputs, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    plugins = [ inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo ];

    settings = {
      plugin.hyprexpo = {
        rows = 3;
        columns = 3;

        gap_size = 1;
        bg_col = "rgb(a89984)";
        workspace_method = "first 1";
      };
    };

    extraConfig = ''
      # hyprlang noerror true
      bind=$mainMod, tab, hyprexpo:expo, toggle
      # hyprlang noerror false
    '';
  };
}
