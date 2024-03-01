{inputs, username, ...}: {
  imports =
    ++ [(import ./aseprite)]        # pixel art editor
    ++ [(import ./audacious)]       # music player
    ++ [(import ./bat)]
    ++ [(import ./btop)]
    ++ [(import ./cava)]
    ++ [(import ./discord)]         # discord with catppuccin theme
    ++ [(import ./floorp)]          # firefox based browser
    ++ [(import ./gaming)]
    ++ [(import ./git)]
    ++ [(import ./gtk)]
    ++ [(import ./hyprland)]
    ++ [(import ./kitty)]
    ++ [(import ./mako)]            # notification deamon
    ++ [(import ./micro)]           # nano replacement
    ++ [(import ./nvim)]
    ++ [(import ./package)]
    ++ [(import ./rider)]           # C# JetBrain editor
    ++ [(import ./scripts)]         # personal scripts
    ++ [(import ./starship)]
    ++ [(import ./swaylock)]
    ++ [(import ./unity)]
    ++ [(import ./vscodium)]
    ++ [(import ./waybar)]
    ++ [(import ./wofi)]
    ++ [(import ./zsh)];
}
