{lib, ...}:
{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

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
        "$c"
        "$elixir"
        "$elm"
        "$golang"
        "$haskell"
        "$java"
        "$julia"
        "$nodejs"
        "$nim"
        "$rust"
        "[](fg:#89b4fa bg:#94e2d5)"
        "$nix_shell"
        "$docker_context"
        "[ ](fg:#94e2d5)"
      ];

      add_newline = false; # Disable the blank line at the start of the prompt

      # You can also replace your username with a neat symbol like  to save some space
      username = {
        show_always = true;
        #style_user = "fg:#11111b bg:#89B4FA";
        #style_root = "fg:#11111b bg:#cba6f7";
        #format = "[$user ]($style)";
        format = "[󱄅 ](fg:#11111b bg:#ff00aa)";
      };

      directory = {
        style = "fg:#cdd6f4";
        format = "[ $path ]($style)";
        truncation_length = 3;
        truncation_symbol = "../";
      };

      # Here is how you can shorten some long paths by text replacement
      # similar to mapped_locations in Oh My Posh:
      #[directory.substitutions]
      #"Documents" = " "
      #"Downloads" = " "
      #"Music" = " "
      #"Pictures" = " "
      #"~" = "󰋞 "
      # Keep in mind that the order matters. For example:
      # "Important Documents" = "  "
      # will not be replaced, because "Documents" was already substituted before.
      # So either put "Important Documents" before "Documents" or use the substituted version:
      # "Important  " = "  "

      c = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      docker_context = {
        symbol = " ";
        style = "fg:#11111b bg:#94e2d5";
        format = "[[ $symbol $context ](fg:#11111b bg:#94e2d5)]($style) $path";
      };

      elixir = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      elm = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      git_branch = {
        symbol = "󰘬";
        style = "fg:#11111b bg:#cba6f7";
        format = "[[ $symbol $branch ](fg:#11111b bg:#cba6f7)]($style)";
      };

      git_status = {
        style = "fg:#11111b bg:#cba6f7";
        format = "[[($all_status$ahead_behind )](fg:#11111b bg:#cba6f7)]($style)";
      };

      golang = {
        symbol = " ";
        style = "fg:#11111b bg:##89b4fa";
        #format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
        format = "[[ $symbol](fg:#11111b bg:#89b4fa)]($style)";
      };

      haskell = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      java = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      julia = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      nodejs = {
        symbol = "";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      nim = {
        symbol = " ";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      nix_shell = {
        symbol = "󱄅 ";
        impure_msg = "i";
        pure_msg = "p";
        unknown_msg = "u";
        style = "fg:#11111b bg:#94e2d5";
        format = "[[ $symbol$state:$name ](fg:#11111b bg:#94e2d5)]($style)";
      };

      rust = {
        symbol = "";
        style = "fg:#11111b bg:#89b4fa";
        format = "[[ $symbol ($version) ](fg:#11111b bg:#89b4fa)]($style)";
      };

      time = {
        disabled = false;
        time_format = "%R"; # Hour:Minute Format
        style = "fg:#11111b bg:#89b4fa";
        format = "[[  $time ](fg:#11111b bg:#89b4fa)]($style)";
      };
    };
  };
}
