{
  config,
  pkgs,
  ...
}: {
  services = {
    mako = {
      enable = true;
      font = "JetBrainsMono Nerd Font 11";
      padding = "20";
      defaultTimeout = 5000;
      borderSize = 2;
      borderRadius = 0;
      backgroundColor = "#1F1F1F";
      borderColor = "#595959";
      progressColor = "over #313244";
      textColor = "#cdd6f4";
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        border-color=#B45C65
      '';
    };
  };
}
