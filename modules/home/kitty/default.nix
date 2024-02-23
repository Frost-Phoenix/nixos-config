{ pkgs, ... }: 
{
  programs.kitty = {
    enable = true;

    theme = "Catppuccin-Mocha";
    
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 13;
    };

    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.55";  
      window_padding_width = 10;
      scrollback_lines = 10000;
      enable_audio_bell = false;
      mouse_hide_wait = 60;
    };

    keybindings = {  
      ## Tabs
      "ctrl+1" = "goto_tab 1";
      "ctrl+2" = "goto_tab 2";
      "ctrl+3" = "goto_tab 3";
      "ctrl+4" = "goto_tab 4";

      ## Unbind
      "ctrl+shift+left" = "no_op";
      "ctrl+shift+right" = "no_op";
    };
  };
}