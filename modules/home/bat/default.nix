{ inputs, ... }: 
{
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
      theme = "Dracula";
    };
    # themes = {
    #   src = inputs.catppuccin-bat;
    #   # https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme
    #   Catppuccin-mocha = {
    #     file = "Catppuccin-mocha.tmTheme";
    #   };
    # };
  };
}