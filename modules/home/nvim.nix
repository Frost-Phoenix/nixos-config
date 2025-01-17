{ pkgs, inputs, ... }:
{
  imports = [ inputs.nvf.homeManagerModules.default ];

  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  programs.nvf = {
    enable = false;

    settings.vim = {
      vimAlias = true;
      viAlias = true;

      theme = {
        enable = true;
        name = "gruvbox";
        style = "dark";
        transparent = true;
      };

      telescope.enable = true;

      spellcheck = {
        enable = true;
      };

      lsp = {
        formatOnSave = true;
        lspkind.enable = false;
        lightbulb.enable = true;
        lspsaga.enable = false;
        trouble.enable = true;
        lspSignature.enable = true;
        otter-nvim.enable = false;
        lsplines.enable = false;
        nvim-docs-view.enable = false;
      };

      languages = {
        enableLSP = true;
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix.enable = true;
        clang.enable = true;
        zig.enable = true;
        python.enable = true;
      };

      visuals = {
        # nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
        cinnamon-nvim.enable = true;
        fidget-nvim.enable = true;

        highlight-undo.enable = true;
        indent-blankline.enable = true;

        # Fun
        # cellular-automaton.enable = false;
      };

      statusline = {
        lualine = {
          enable = true;
          theme = "gruvbox";
        };
      };

      autopairs.nvim-autopairs.enable = true;

      autocomplete.nvim-cmp.enable = true;
      snippets.luasnip.enable = true;

      tabline = {
        nvimBufferline.enable = true;
      };

      treesitter.context.enable = true;

      binds = {
        whichKey.enable = true;
        cheatsheet.enable = true;
      };

      git = {
        enable = true;
        gitsigns.enable = true;
        gitsigns.codeActions.enable = false; # throws an annoying debug message
      };

      dashboard = {
        dashboard-nvim.enable = true;
        alpha.enable = true;
      };

      notify = {
        nvim-notify.enable = true;
      };

      utility = {
        ccc.enable = false;
        vim-wakatime.enable = false;
        icon-picker.enable = false;
        surround.enable = false;
        diffview-nvim.enable = true;
        motion = {
          hop.enable = true;
          leap.enable = true;
          precognition.enable = false;
        };

        images = {
          image-nvim.enable = false;
        };
      };

      ui = {
        borders.enable = true;
        noice.enable = true;
        colorizer.enable = true;
        illuminate.enable = true;
        breadcrumbs = {
          enable = false;
          navbuddy.enable = false;
        };
        smartcolumn = {
          enable = true;
        };
        fastaction.enable = true;
      };

      session = {
        nvim-session-manager.enable = false;
      };

      comments = {
        comment-nvim.enable = true;
      };
    };
  };
}
