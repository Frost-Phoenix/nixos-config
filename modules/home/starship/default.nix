{ inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      format = lib.concatStrings [
        #"[ ](fg:#1e1e2e bg:#ff00aa)"
        #"$username"
        #"[](fg:#ff00aa)"
        "$directory"
        "[](fg:#1e1e2e bg:#cba6f7)"
        "$git_branch"
        "$git_status"
        "[](fg:#cba6f7 bg:#89b4fa)"
        "[](fg:#89b4fa bg:#94e2d5)"
        "$nix_shell"
        "[ ](fg:#94e2d5)"
      ];

      # character = {
      #   success_symbol = "[ ](bold #89dceb)[›](bold green)";
      #   error_symbol = "[ ](bold #89dceb)[›](bold red)";
      # };

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