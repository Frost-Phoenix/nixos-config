{ ... }:
{
  services.blueman-applet.enable = true;

  dconf.settings = {
    "org/blueman/plugins/powermanager" = {
      auto-power-on = false;
    };
  };
}
