{ lib, inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      # format = lib.concatStrings [
      #   # "$directory"
      #   # "$git_branch"
      #   # "$git_status"
      #   # "$nix_shell"
      #   "$directory"
      #   "$git_branch"
      #   "$git_status"
      #   "$git_metrics"
      #   "$time"
      #   "\n"
      #   "$character"
      # ];

      directory = {
        format = "[  $path ]($style)";
        style = "bold #b4befe";
      };

      character = {
        success_symbol = "[ ](bold #89dceb)[ ➜](bold green)";
        error_symbol = "[ ](bold #89dceb)[ ➜](bold red)";
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