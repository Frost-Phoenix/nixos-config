{lib, ...}: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[󰊠 ](bold #cba6f7)[󰊠 ](bold #f2cdcd)[󰊠 ](bold #b4befe)[ ](bold #a6e3a1)";
        error_symbol = "[󰊠 ](bold #cba6f7)[󰊠 ](bold #f2cdcd)[󰊠 ](bold #b4befe)[ ](bold #f38ba8)";
        vimcmd_symbol = "[ NORMAL](bold #fab387)";
        vimcmd_visual_symbol = "[ VISUAL](bold #89dceb)";
      };
      format = lib.strings.concatStrings [
        "$nix_shell"
        "$os"
        "$directory"
        "$container"
        "$git_branch $git_status"
        "$python"
        "$nodejs"
        "$lua"
        "$rust"
        "$java"
        "$c"
        "$golang"
        "$cmd_duration"
        "$status"
        "\n$character"
      ];
      git_branch.symbol = " ";
      git_commit.tag_disabled = false;
      git_status = {
        ahead = ''⇡''${count}'';
        behind = ''⇣''${count}'';
        diverged = ''⇕⇡''${ahead_count}⇣''${behind_count}'';
        staged = "+$count";
      };
      kubernetes.disabled = false;
      time.disabled = false;
    };
  };
}
