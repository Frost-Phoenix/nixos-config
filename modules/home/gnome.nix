{ pkgs, ... }:
{
  home.packages = (with pkgs; [
    gnome-text-editor
    file-roller
  ]);

  dconf.settings = {
    "org/gnome/TextEditor" = {
      custom-font = "FiraCode Nerd Font 15";
      highlight-current-line = true;
      indent-style = "space";
      restore-session = false;
      show-grid = false;
      show-line-numbers = true;
      show-right-margin = false;
      style-scheme = "builder-dark";
      style-variant = "dark";
      tab-width = "uint32 4";
      use-system-font = false;
      wrap-text = false;
    };
  };
}
