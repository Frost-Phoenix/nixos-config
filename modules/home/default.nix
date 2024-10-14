{inputs, username, host, ...}: {
  imports = [
    ./aseprite/aseprite.nix           # pixel art editor
    ./audacious.nix                   # music player
    ./bat.nix                         # better cat command
    ./btop.nix                        # resouces monitor 
    ./cava.nix                        # audio visualizer
    ./discord/discord.nix             # discord with gruvbox
    ./fastfetch.nix                   # fetch tool
    ./floorp/floorp.nix               # firefox based browser
    ./fzf.nix                         # fuzzy finder
    ./gaming.nix                      # packages related to gaming
    ./git.nix                         # version control
    ./gnome.nix                       # gnome apps
    ./gtk.nix                         # gtk theme
    ./hyprland                        # window manager
    ./kitty.nix                       # terminal
    ./swayosd.nix                     # brightness / volume wiget
    ./swaync/swaync.nix               # notification deamon
    ./micro.nix                       # nano replacement
    ./nemo.nix                        # file manager
    ./nvim.nix                        # neovim editor
    ./p10k/p10k.nix
    ./packages.nix                    # other packages
    ./retroarch.nix  
    ./rofi.nix                        # launcher
    ./scripts/scripts.nix             # personal scripts
    ./spicetify.nix                   # spotify client
    ./starship.nix                    # shell prompt
    ./swaylock.nix                    # lock screen
    ./viewnior.nix                    # image viewer
    ./vscodium.nix                    # vscode forck
    ./waybar                          # status bar
    ./wezterm.nix                     # terminal
    ./xdg-mimes.nix                   # xdg config
    ./zsh                             # shell
  ];
}
