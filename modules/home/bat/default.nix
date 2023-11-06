{ inputs, ... }: 
{
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
      theme = "Catppuccin-mocha";
    };
    themes = {
      src = inputs.catppuccin-bat;
      # https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme
      Catppuccin-mocha = {
        file = "Catppuccin-mocha.tmTheme";
      };
    };
  };
}