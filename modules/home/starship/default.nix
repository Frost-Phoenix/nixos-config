{ lib, inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      right_format = "$cmd_duration";
      
      directory = {
        format = "[ ](bold #89b4fa)[ $path ]($style)";
        style = "bold #b4befe";
      };

      character = {
        success_symbol = "[ ](bold #89b4fa)[ ➜](bold green)";
        error_symbol = "[ ](bold #89b4fa)[ ➜](bold red)";
        # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      };

      cmd_duration = {
        format = "[]($style)[[神](bg:#161821 fg:#eba0ac bold)$duration](bg:#161821 fg:#BBC3DF)[ ]($style)";
        disabled = false;
        style = "bg:none fg:#161821";
    };        

      # directory.substitutions = {
        # "~" = "󰋞";
        # "Documents" = " ";
        # "Downloads" = " ";
        # "Music" = " ";
        # "Pictures" = " ";
      # };

      palette = "catppuccin_mocha";
    } // builtins.fromTOML (builtins.readFile "${inputs.catppuccin-starship}/palettes/mocha.toml");
  };
}