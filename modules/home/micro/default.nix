{ ... }: 
{
  programs.micro = {
    enable = true;
    
    settings = {
      "colorscheme" = "catppuccin-mocha";
    };
  };

  xdg.configFile."micro".source = ./config;
}