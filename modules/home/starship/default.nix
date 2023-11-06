{ inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      character = {
        success_symbol = "[ ](bold #74c7ec)[❯ ](bold green)[› ](bold green)";
        error_symbol = "[ ](bold #74c7ec)[❯ ](bold red)[› ](bold red)";
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