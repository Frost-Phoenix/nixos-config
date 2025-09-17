{ ... }:
{
  security.rtkit.enable = true;
  security.sudo.enable = true;
  security.pam.services.swaylock = { };
  security.pam.services.hyprlock = { };
  # security.pam.services.display-manager.enableGnomeKeyring = true;
  # security.pam.services.login.enableGnomeKeyring = true;
  # security.pam.services.lightdm.enableGnomeKeyring = true;
}
