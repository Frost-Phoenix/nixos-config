{inputs, username, ...}: {
  imports =
       [(import ./aseprite/aseprite.nix)]         # pixel art editor
    ++ [(import ./audacious/audacious.nix)]       # music player
    ++ [(import ./bat.nix)]
    ++ [(import ./btop.nix)]
    ++ [(import ./cava.nix)]
    ++ [(import ./discord.nix)]                   # discord with catppuccin theme
    ++ [(import ./floorp/floorp.nix)]             # firefox based browser
    ++ [(import ./gaming.nix)]
    ++ [(import ./git.nix)]
    ++ [(import ./gtk.nix)]
    ++ [(import ./hyprland)]
    ++ [(import ./kitty.nix)]
    ++ [(import ./mako.nix)]                      # notification deamon
    ++ [(import ./micro.nix)]                     # nano replacement
    ++ [(import ./nvim.nix)]
    ++ [(import ./packages.nix)]
    ++ [(import ./scripts/scripts.nix)]           # personal scripts
    ++ [(import ./starship.nix)]
    ++ [(import ./swaylock.nix)]
    ++ [(import ./vscodium.nix)]
    ++ [(import ./waybar)]
    ++ [(import ./wofi.nix)]
    ++ [(import ./zsh.nix)];
}
