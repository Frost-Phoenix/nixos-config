{inputs, username, ...}: {
  imports =
       [(import ./waybar)]
    ++ [(import ./firefox)]
    ++ [(import ./vscodium)]
    ++ [(import ./hyprland)]
    ++ [(import ./gaming)]
    ++ [(import ./git)]
    ++ [(import ./btop)]
    ++ [(import ./bat)]
    ++ [(import ./cava)]
    ++ [(import ./kitty)]
    ++ [(import ./micro)]           # nano replacement
    ++ [(import ./aseprite)]        # pixel art editor
    ++ [(import ./audacious)]       # music player
    ++ [(import ./unity)]
    ++ [(import ./rider)]           # C# JetBrain editor
    ++ [(import ./discord)]         # discord with catppuccin theme
    ++ [(import ./swaylock)]
    ++ [(import ./wofi)]
    ++ [(import ./zsh)]
    ++ [(import ./gtk)]
    ++ [(import ./mako)]            # notification deamon
    ++ [(import ./scripts)]         # personal scripts
    ++ [(import ./starship)]
    ++ [(import ./nvim)]
    ++ [(import ./package)];
}
