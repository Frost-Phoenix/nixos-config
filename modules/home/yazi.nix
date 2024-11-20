{ inputs, pkgs, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    # package = pkgs.yazi-unwrapped;

    settings = {
      manager = {
        linemode = "size";
        show_hidden = true;
        show_symlink = true;
        sort_by = "natural";
        sort_dir_first = true;
        sort_reverse = false;
        sort_sensitive = false;
      };
    };

    plugins = {
      full-border = "${inputs.yazi-plugins}/full-border.yazi";
    };
  };

  xdg.configFile."yazi/init.lua".text = ''
    require("full-border"):setup()
  '';
}
