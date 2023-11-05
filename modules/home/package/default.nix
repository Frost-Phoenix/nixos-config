{ inputs
, pkgs
, ...
}: {
  home.packages =
    let
      php = pkgs.php.buildEnv { extraConfig = "memory_limit = 2G"; };
    in
    (with pkgs;
    [
      # programming
      python39
      nodejs
      nodePackages.nodemon
      yarn
      nix-prefetch-github
      typescript
      rnix-lsp
      ripgrep
      rustup
      php
      vscode

      # others
      openssl
      libnotify
      pamixer
      xfce.thunar
      pavucontrol
      wget
      unzip
      gparted
      mpv
      playerctl
      qalculate-gtk
      bleachbit
      imv
      htop
      xdg-utils
      fzf
      ffmpeg
      bore-cli
      discord
      exa
      inputs.alejandra.defaultPackage.${system}
    ]
    ++ [

    ]);
}
