{ inputs, pkgs, ... }:
{
  home.packages = (with pkgs; [ lazygit ]);

  xdg.configFile."lazygit/config.yml".text = ''
    gui:
        border: single
  '';
}
