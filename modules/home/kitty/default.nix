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
    };
  };
}