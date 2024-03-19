{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    bitwise                           # cli tool for bit / hex manipulation
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    file                              # Show file information 
    fzf                               # fuzzy finder
    jdk17                             # java
    lazygit
    libreoffice
    nitch                             # systhem fetch util
    nix-prefetch-github
    pipx                              # Install Python applications in isolated environments
    prismlauncher                     # minecraft launcher
    ripgrep                           # grep replacement
    soundwireserver                   # pass audio to android phone
    todo                              # cli todo list
    toipe                             # typing test in the terminal
    cinnamon.nemo-with-extensions     # file manager
    yazi                              # terminal file manager
    youtube-dl
    gnome.zenity

    # C / C++
    gcc
    gnumake

    # Python
    python3

    bleachbit                         # cache cleaner
    cmatrix
    gparted                           # partition manager
    ffmpeg
    imv                               # image viewer
    libnotify
	  man-pages					            	  # extra man pages
    mpv                               # video player
    ncdu                              # disk space
    openssl
    pamixer                           # pulseaudio command line mixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    qalculate-gtk                     # calculator
    unzip
    wget
    xdg-utils
    inputs.alejandra.defaultPackage.${system}
  ]);
}
