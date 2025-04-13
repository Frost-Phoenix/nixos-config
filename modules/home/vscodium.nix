{ pkgs, ... }:
let
  jonathanharty.gruvbox-material-icon-theme =
    pkgs.vscode-utils.buildVscodeMarketplaceExtension
      {
        mktplcRef = {
          name = "gruvbox-material-icon-theme";
          publisher = "JonathanHarty";
          version = "1.1.5";
          hash = "sha256-86UWUuWKT6adx4hw4OJw3cSZxWZKLH4uLTO+Ssg75gY=";
        };
      };
  ziglang_vscode-zig = pkgs.vscode-utils.buildVscodeMarketplaceExtension {
    mktplcRef = {
      name = "vscode-zig";
      publisher = "ziglang";
      version = "0.6.5";
      hash = "sha256-eFfucWSioF1w4veoO8VAFNi5q2g9JZbZu+NEOuuyHtM=";
    };
  };

in
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        # nix language
        jnoortheen.nix-ide
        # nix-shell suport
        arrterian.nix-env-selector
        # python
        # ms-python.python
        # C/C++
        llvm-vs-code-extensions.vscode-clangd
        # OCaml
        # ocamllabs.ocaml-platform
        # Zig
        # ziglang.vscode-zig
        ziglang_vscode-zig

        # Color theme
        jdinhlife.gruvbox
        # sainnhe.gruvbox-material
        jonathanharty.gruvbox-material-icon-theme
      ];
      userSettings = {
        "update.mode" = "none";
        "extensions.autoUpdate" = false; # This stuff fixes vscode freaking out when theres an update
        "window.titleBarStyle" = "custom"; # needed otherwise vscode crashes, see https://github.com/NixOS/nixpkgs/issues/246509

        "window.menuBarVisibility" = "toggle";
        "editor.fontFamily" = "'Maple Mono', 'SymbolsNerdFont', 'monospace', monospace";
        "terminal.integrated.fontFamily" = "'Maple Mono', 'SymbolsNerdFont'";
        "editor.fontSize" = 18;
        "workbench.colorTheme" = "Gruvbox Dark Hard";
        "workbench.iconTheme" = "gruvbox-material-icon-theme";
        "material-icon-theme.folders.theme" = "classic";
        "vsicons.dontShowNewVersionMessage" = true;
        "explorer.confirmDragAndDrop" = false;
        "editor.fontLigatures" = true;
        "editor.minimap.enabled" = false;
        "workbench.startupEditor" = "none";

        "editor.formatOnSave" = true;
        "editor.formatOnType" = true;
        "editor.formatOnPaste" = true;
        "editor.inlayHints.enabled" = "off";

        "workbench.layoutControl.type" = "menu";
        "workbench.editor.limit.enabled" = true;
        "workbench.editor.limit.value" = 10;
        "workbench.editor.limit.perEditorGroup" = true;
        "workbench.editor.showTabs" = "none";
        "files.autoSave" = "onWindowChange";
        "explorer.openEditors.visible" = 0;
        "breadcrumbs.enabled" = false;
        "editor.renderControlCharacters" = false;
        "workbench.activityBar.location" = "hidden";
        "workbench.statusBar.visible" = false;
        "editor.scrollbar.verticalScrollbarSize" = 2;
        "editor.scrollbar.horizontalScrollbarSize" = 2;
        "editor.scrollbar.vertical" = "hidden";
        "editor.scrollbar.horizontal" = "hidden";
        "workbench.layoutControl.enabled" = false;

        "editor.mouseWheelZoom" = true;

        # C/C++
        "clangd.arguments" = [
          "--clang-tidy"
          "--inlay-hints=false"
        ];

        # Zig
        "zig.initialSetupDone" = true;
        "zig.checkForUpdate" = false;
        "zig.zls.path" = "zls";
        "zig.path" = "zig";
        "zig.revealOutputChannelOnFormattingError" = false;
        "zig.zls.enableInlayHints" = false;

        "nix.serverPath" = "nixd";
        "nix.enableLanguageServer" = true;
        # "nix.serverSettings" = {
        #   "nixd" = {
        #     "formatting" = {
        #       "command" = [ "nixfmt" ];
        #     };
        #   };
        # };
      };
      # Keybindings
      keybindings = [
        {
          key = "ctrl+q";
          command = "editor.action.commentLine";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+s";
          command = "workbench.action.files.saveFiles";
        }
      ];
    };
  };
}
