{ inputs, ... }: 
{
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
      theme = "Catppuccin-mocha";
    };
    themes = {
      # https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme
      Catppuccin-mocha = {
        file = builtins.readFile "${inputs.catppuccin-bat}/Catppuccin-mocha.tmTheme";
      };
    };
  };
}