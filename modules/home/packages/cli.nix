{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ani-cli
    aoc-cli                           # Advent of Code command-line tool
    asciinema
    asciinema-agg
    binsider
    bitwise                           # cli tool for bit / hex manipulation
    caligula                          # User-friendly, lightweight TUI for disk imaging
    dysk                              # disk information
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    ffmpeg
    file                              # Show file information
    gtt                               # google translate TUI
    gtrash                            # rm replacement, put deleted files in system trash
    hevi                              # hex viewer
    hexdump
    htop
    imv                               # image viewer
    jq                                # JSON processor
    killall
    libnotify
    lowfi
    man-pages                         # extra man pages
    mimeo
    mpv                               # video player
    ncdu                              # disk space
    nitch                             # systhem fetch util
    openssl
    onefetch                          # fetch utility for git repo
    pamixer                           # pulseaudio command line mixer
    playerctl                         # controller for media players
    poweralertd
    programmer-calculator
    ripgrep                           # grep replacement
    shfmt                             # bash formatter
    smassh                            # typing test in the terminal
    swappy                            # snapshot editing tool
    tdf                               # cli pdf viewer
    treefmt                           # project formatter
    tldr
    toipe                             # typing test in the terminal
    ttyper                            # cli typing test
    unzip
    wavemon                           # monitoring for wireless network devices
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    wget
    woomer
    yt-dlp-light
    xdg-utils
    xxd

    winetricks
    wineWowPackages.wayland

    cbonsai                           # terminal screensaver
    cmatrix
    pipes                             # terminal screensaver
    sl
    tty-clock                         # cli clock
  ];
}
