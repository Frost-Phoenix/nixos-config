{ username, ... }: 
{
  security.rtkit.enable = true;
  security.sudo = {
    enable = true;
    extraRules = [
      {
        users = [ "${username}" ];
        options = [ "NOPASSWD" ];
      }
    ];
  };
  # security.pam.services.swaylock = { };
  security.pam.services.hyprlock = {};
}
