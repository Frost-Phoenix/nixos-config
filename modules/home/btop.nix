{ pkgs, ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "TTY";
      theme_background = false;
      update_ms = 500;
      rounded_corners = false;
    };
  };

  home.packages = (with pkgs; [ nvtopPackages.intel ]);
}
