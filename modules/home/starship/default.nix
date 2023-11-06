{ inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      # character = {
      #   success_symbol = "[›](bold green)";
      #   error_symbol = "[›](bold red)";
      # };
      # character = {
      #   success_symbol = "[󰊠 ](bold #cba6f7)[󰊠 ](bold #f2cdcd)[󰊠 ](bold #b4befe)[ ](bold #a6e3a1)";
      #   error_symbol = "[󰊠 ](bold #cba6f7)[󰊠 ](bold #f2cdcd)[󰊠 ](bold #b4befe)[ ](bold #f38ba8)";
      # };

      directory.substitutions = {
        "Documents" = " ";
        "Downloads" = " ";
        "Music" = " ";
        "Pictures" = " ";
        "~" = "󰋞 ";
      };

      palette = "catppuccin_mocha";
    } // builtins.fromTOML (builtins.readFile "${inputs.catppuccin-starship}/palettes/mocha.toml");
  };
}