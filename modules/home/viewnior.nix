{ pkgs, ... }:
{
  home.packages = with pkgs; [ viewnior ];

  xdg.configFile."viewnior/viewnior.conf".text = ''
    [prefs]
    zoom-mode=0
    fit-on-fullscreen=true
    show-hidden=true
    dark-background=false
    smooth-images=true
    confirm-delete=true
    reload-on-save=false
    show-menu-bar=true
    show-toolbar=false
    show-scrollbar=false
    show-statusbar=false
    start-maximized=false
    slideshow-timeout=10
    auto-resize=false
    behavior-wheel=1
    behavior-click=0
    behavior-modify=0
    jpeg-quality=90
    png-compression=9
    desktop=9
  '';
}
