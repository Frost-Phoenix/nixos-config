{ ... }:
{
  programs.cava = {
    enable = true;

    settings = {
      color = {
        gradient = 1;
        gradient_count = 8;

        gradient_color_1 = "'#fb4934'"; # red
        gradient_color_2 = "'#fe8019'"; # orange
        gradient_color_3 = "'#fabd2f'"; # yellow
        gradient_color_4 = "'#b8bb26'"; # bright green
        gradient_color_5 = "'#8ec07c'"; # green
        gradient_color_6 = "'#83a598'"; # blue
        gradient_color_7 = "'#d3869b'"; # purple
        gradient_color_8 = "'#ebdbb2'"; # light foreground
      };
    };
  };
}
