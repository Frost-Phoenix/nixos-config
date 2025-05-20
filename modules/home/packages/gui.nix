{ pkgs, ... }:
{
  home.packages = with pkgs; [
    audacity
    dconf-editor
    gimp
    gnome-disk-utility
    ldtk                              # 2D level editor
    tiled                             # tile map editor
    libreoffice
    obs-studio
    pavucontrol                       # pulseaudio volume controle (GUI)
    pitivi                            # video editing
    gnome-calculator                  # calculator
    mission-center                    # GUI resources monitor
    soundwireserver
    vlc
    zenity
  ];
}
