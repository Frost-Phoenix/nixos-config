{ lib, inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      directory = {
        format = "[ $path ]($style)";
        style = "bold #94e2d5";
      };

      character = {
        success_symbol = "[](bold #89dceb)[ ➜](bold green)";
        error_symbol = "[](bold #89dceb)[ ➜](bold red)";
        # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      };

      # directory.substitutions = {
      #   "Documents" = " ";
      #   "Downloads" = " ";
      #   "Music" = " ";
      #   "Pictures" = " ";
      #   "~" = "󰋞 ";
      # };

      palette = "catppuccin_mocha";
    } // builtins.fromTOML (builtins.readFile "${inputs.catppuccin-starship}/palettes/mocha.toml");
  };
}