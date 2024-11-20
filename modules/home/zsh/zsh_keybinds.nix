{
  hostname,
  config,
  pkgs,
  host,
  ...
}:
{
  programs.zsh = {
    initExtra = ''
      # Use emacs key bindings
      bindkey -e

      WORDCHARS='~!#$%^&*(){}[]<>?.+;-'

      ""{back,for}ward-word() WORDCHARS=$MOTION_WORDCHARS zle .$WIDGET
      zle -N backward-word
      zle -N forward-word

      # [PageUp] - Up a line of history
      if [[ -n "''${terminfo[kpp]}" ]]; then
        bindkey -M emacs "''${terminfo[kpp]}" up-line-or-history
        bindkey -M viins "''${terminfo[kpp]}" up-line-or-history
        bindkey -M vicmd "''${terminfo[kpp]}" up-line-or-history
      fi
      # [PageDown] - Down a line of history
      if [[ -n "''${terminfo[knp]}" ]]; then
        bindkey -M emacs "''${terminfo[knp]}" down-line-or-history
        bindkey -M viins "''${terminfo[knp]}" down-line-or-history
        bindkey -M vicmd "''${terminfo[knp]}" down-line-or-history
      fi

      # Start typing + [Up-Arrow] - fuzzy find history forward
      autoload -U up-line-or-beginning-search
      zle -N up-line-or-beginning-search

      bindkey -M emacs "^[[A" up-line-or-beginning-search
      bindkey -M viins "^[[A" up-line-or-beginning-search
      bindkey -M vicmd "^[[A" up-line-or-beginning-search
      if [[ -n "''${terminfo[kcuu1]}" ]]; then
        bindkey -M emacs "''${terminfo[kcuu1]}" up-line-or-beginning-search
        bindkey -M viins "''${terminfo[kcuu1]}" up-line-or-beginning-search
        bindkey -M vicmd "''${terminfo[kcuu1]}" up-line-or-beginning-search
      fi

      # Start typing + [Down-Arrow] - fuzzy find history backward
      autoload -U down-line-or-beginning-search
      zle -N down-line-or-beginning-search

      bindkey -M emacs "^[[B" down-line-or-beginning-search
      bindkey -M viins "^[[B" down-line-or-beginning-search
      bindkey -M vicmd "^[[B" down-line-or-beginning-search
      if [[ -n "''${terminfo[kcud1]}" ]]; then
        bindkey -M emacs "''${terminfo[kcud1]}" down-line-or-beginning-search
        bindkey -M viins "''${terminfo[kcud1]}" down-line-or-beginning-search
        bindkey -M vicmd "''${terminfo[kcud1]}" down-line-or-beginning-search
      fi

      # [Ctrl-Delete] - delete whole forward-word
      bindkey -M emacs '^[[3;5~' kill-word
      bindkey -M viins '^[[3;5~' kill-word
      bindkey -M vicmd '^[[3;5~' kill-word

      # [Ctrl-RightArrow] - move forward one word
      bindkey -M emacs '^[[1;5C' forward-word
      bindkey -M viins '^[[1;5C' forward-word
      bindkey -M vicmd '^[[1;5C' forward-word
      # [Ctrl-LeftArrow] - move backward one word
      bindkey -M emacs '^[[1;5D' backward-word
      bindkey -M viins '^[[1;5D' backward-word
      bindkey -M vicmd '^[[1;5D' backward-word

      bindkey '\ew' kill-region                             # [Esc-w] - Kill from the cursor to the mark
      bindkey -s '\el' 'ls\n'                               # [Esc-l] - run command: ls
      bindkey ' ' magic-space                               # [Space] - don't do history expansion
            
      # Edit the current command line in $EDITOR
      autoload -U edit-command-line
      zle -N edit-command-line
      bindkey '\C-x\C-e' edit-command-line

      # file rename magick
      bindkey "^[m" copy-prev-shell-word

      # This will be our new default `ctrl+w` command
      my-backward-delete-word() {
          # Copy the global WORDCHARS variable to a local variable. That way any
          # modifications are scoped to this function only
          local WORDCHARS=$WORDCHARS
          # Use bash string manipulation to remove `:` so our delete will stop at it
          WORDCHARS="''${WORDCHARS//:}"
          # Use bash string manipulation to remove `/` so our delete will stop at it
          WORDCHARS="''${WORDCHARS//\/}"
          # Use bash string manipulation to remove `.` so our delete will stop at it
          WORDCHARS="''${WORDCHARS//.}"
          WORDCHARS="''${WORDCHARS//-}"
          # zle <widget-name> will run an existing widget.
          zle backward-delete-word
      }
      # `zle -N` will create a new widget that we can use on the command line
      zle -N my-backward-delete-word
      # bind this new widget to `ctrl+w`
      bindkey '^W' my-backward-delete-word
    '';
  };
}
