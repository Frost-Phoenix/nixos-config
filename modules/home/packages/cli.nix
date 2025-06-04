{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Better core utils
    duf                               # disk information
    eza                               # ls replacement
    fd                                # find replacement
    gping                             # ping with a graph
    gtrash                            # rm replacement, put deleted files in system trash
    hevi                              # hex viewer
    ncdu                              # disk space
    hexyl                             # hex viewer
    man-pages                         # extra man pages
    ripgrep                           # grep replacement
    tldr

    ## TUI
    gtt                               # google translate TUI
    smassh                            # typing test in the terminal
    toipe                             # typing test in the terminal
    ttyper                            # cli typing test
    programmer-calculator

    aoc-cli                           # Advent of Code command-line tool
    asciinema
    asciinema-agg
    binsider
    bitwise                           # cli tool for bit / hex manipulation
    broot                             # tree files view
    caligula                          # User-friendly, lightweight TUI for disk imaging
    mimeo
    hyperfine                         # benchmarking tool
    pastel                            # cli to manipulate colors
    swappy                            # snapshot editing tool
    tdf                               # cli pdf viewer
    yt-dlp-light
    tokei                             # project line counter
    translate-shell                   # cli translator
    woomer
    xxd

    ## Monitoring
    htop
    neofetch
    nitch                             # systhem fetch util
    onefetch                          # fetch utility for git repo
    wavemon                           # monitoring for wireless network devices

    ## Fun
    asciiquarium-transparent
    cbonsai
    cmatrix
    countryfetch
    cowsay
    figlet
    pipes
    sl
    tty-clock

    ## Multimedia
    ani-cli
    imv
    lowfi
    mpv

    ## Utilities
    entr                              # perform action when file change
    ffmpeg
    file                              # Show file information
    jq                                # JSON processor
    killall
    libnotify
    openssl
    pamixer                           # pulseaudio command line mixer
    playerctl                         # controller for media players
    poweralertd
    unzip
    wget
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    xdg-utils

    winetricks
    wineWowPackages.waylandFull
  ];
}
