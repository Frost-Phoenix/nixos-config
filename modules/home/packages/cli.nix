{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Better core utils
    duf                               # disk information
    eza                               # ls replacement
    fd                                # find replacement
    gtrash                            # rm replacement, put deleted files in system trash
    hevi                              # hex viewer
    ncdu                              # disk space
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
    caligula                          # User-friendly, lightweight TUI for disk imaging
    mimeo
    swappy                            # snapshot editing tool
    tdf                               # cli pdf viewer
    yt-dlp-light
    woomer
    xxd

    ## Monitoring
    htop
    nitch                             # systhem fetch util
    onefetch                          # fetch utility for git repo
    wavemon                           # monitoring for wireless network devices

    ## Fun
    cbonsai
    cmatrix
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
