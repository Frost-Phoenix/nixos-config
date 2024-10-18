{ inputs, pkgs, host, ... }:
{
  programs.wezterm = {
    enable = true;
    package = inputs.wezterm.packages.${pkgs.system}.default;
    extraConfig = ''
      -- Pull in the wezterm API
      local wezterm = require "wezterm"

      local config = {}

      -- In newer versions of wezterm, use the config_builder which will
      -- help provide clearer error messages
      if wezterm.config_builder then
          config = wezterm.config_builder()
      end

      config.check_for_updates = false
      config.automatically_reload_config = false

      config.font = wezterm.font("CaskaydiaCove Nerd Font")
      config.font_size = ${if (host == "laptop") then "15" else "17"}
      config.cell_width = 1
      config.underline_thickness = 2

      config.default_prog = { 'zsh' }

      config.window_decorations = "NONE"
      config.window_background_opacity = 0.45
      config.window_close_confirmation = 'NeverPrompt'
      config.window_padding = {
        left = 5,
        right = 5,
        top = 5,
        bottom = 5,
      }

      config.default_cursor_style = "SteadyBar"

      config.enable_scroll_bar    = false
      config.warn_about_missing_glyphs = false

      config.scrollback_lines = 10000
      -- config.harfbuzz_features = { "cv30", "cv21", "cv32", "ss09" } 
      config.freetype_load_flags = 'NO_HINTING'

      -- config.color_scheme = "GruvboxDarkHard"
      config.bold_brightens_ansi_colors = false
      config.colors = {
        foreground = '#EBDBB2',
        background = '#282828',

        cursor_bg = '#BDAE93',
        cursor_fg = '#BDAE93',
        cursor_border = '#BDAE93',

        selection_fg = '#1D2021',
        selection_bg = '#98971A',

        -- The color of the split lines between panes
        split = '#928374',

        ansi = {
          '#3c3836',
          '#cc241d',
          '#98971a',
          '#d79921',
          '#458588',
          '#b16286',
          '#689d6a',
          '#a89984',
        },
        brights = {
          '#928374',
          '#fb4934',
          '#b8bb26',
          '#fabd2f',
          '#83a598',
          '#d3869b',
          '#8ec07c',
          '#fbf1c7',
        },
      }

      --# tab bar
      config.hide_tab_bar_if_only_one_tab = true
      config.tab_bar_at_bottom = true
      config.use_fancy_tab_bar = false
      -- config.tab_and_split_indices_are_zero_based = true

      -- unbind keys
      config.keys = {
        { key = 'UpArrow', mods = 'CTRL|SHIFT', action = wezterm.action.DisableDefaultAssignment, },
        { key = 'DownArrow', mods = 'CTRL|SHIFT', action = wezterm.action.DisableDefaultAssignment, },
        { key = 'LeftArrow', mods = 'CTRL|SHIFT', action = wezterm.action.DisableDefaultAssignment, },
        { key = 'RightArrow', mods = 'CTRL|SHIFT', action = wezterm.action.DisableDefaultAssignment, },
      }
      -- remove copy on highlight
      config.mouse_bindings = {
        {
          event = { Up = { streak = 1, button = "Left" } },
          mods = "NONE",
          action = wezterm.action.Nop,
        },
      }

      return config
    '';
  };
}
