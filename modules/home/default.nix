{ ... }:
{
  imports = [
    ./aseprite/aseprite.nix           # pixel art editor
    ./audacious/audacious.nix         # music player
    ./bat.nix                         # better cat command
    ./browser.nix                     # firefox based browser
    ./btop.nix                        # resouces monitor 
    ./cava.nix                        # audio visualizer
    ./discord.nix                     # discord
    ./fastfetch/fastfetch.nix         # fetch tool
    ./fzf.nix                         # fuzzy finder
    ./gaming.nix                      # packages related to gaming
    ./ghostty/ghostty.nix             # terminal
    ./git.nix                         # version control
    ./gnome.nix                       # gnome apps
    ./gtk.nix                         # gtk theme
    ./hyprland                        # window manager
    ./kitty.nix                       # terminal
    ./lazygit.nix
    ./micro.nix                       # nano replacement
    ./nemo.nix                        # file manager
    ./nvim.nix                        # neovim editor
    ./obsidian.nix
    ./p10k/p10k.nix
    ./packages                        # other packages
    ./retroarch.nix  
    ./rofi/rofi.nix                   # launcher
    ./../../scripts/scripts.nix       # personal scripts
    ./ssh.nix                         # ssh config
    ./spicetify.nix                   # spotify client
    ./superfile/superfile.nix         # terminal file manager
    ./swaylock.nix                    # lock screen
    ./swayosd.nix                     # brightness / volume wiget
    ./swaync/swaync.nix               # notification deamon
    ./vscodium                        # vscode fork
    ./waybar                          # status bar
    ./waypaper.nix                    # GUI wallpaper picker
    ./xdg-mimes.nix                   # xdg config
    ./zsh                             # shell
  ];
}
