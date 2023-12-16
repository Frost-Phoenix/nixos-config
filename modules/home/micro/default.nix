{ ... }: 
{
  programs.micro = {
    enable = true;
    
    settings = {
      "colorscheme" = "catppuccin-mocha";
    };
  };

  xdg.configFile."micro/colorschemes".source = ./catppuccin-mocha.micro;
}