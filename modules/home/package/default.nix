{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    eza
    fzf
    lazygit
    nix-prefetch-github
    python39
    ripgrep
    rnix-lsp
    rustup
    xfce.thunar
    yazi

    bleachbit
    bore-cli
    gparted
    ffmpeg
    imv
    libnotify
    mpv
    openssl
    pamixer
    pavucontrol
    playerctl
    qalculate-gtk
    unzip
    wget
    xdg-utils
    inputs.alejandra.defaultPackage.${system}
  ]);
}
