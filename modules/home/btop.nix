{ pkgs, ... }: 
{
  programs.btop = {
    enable = true;
    
    settings = {
      color_theme = "TTY";
      theme_background = false;
      update_ms = 500;
    };
  };

  home.packages = (with pkgs; [ nvtopPackages.intel ]);
}
