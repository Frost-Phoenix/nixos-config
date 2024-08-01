{ pkgs, lib, config, inputs, ... }: 
{
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      clock = true;
      daemonize=true;
      timestr="%H:%M";
      datestr = "";
      screenshots = true;
      ignore-empty-password=true;
      
      indicator = true;
      indicator-radius = 125;
      indicator-thickness = 8;
      
      effect-blur = "7x5";
      effect-vignette = "0.5:0.5";
      effect-pixelate = 5;
      
      font="JetBrainsMono Nerd Font";

      text-wrong-color="FFFFFFFF";
      text-ver-color="FFFFFFFF";
      text-clear-color="FFFFFFFF";
      key-hl-color="fabd2fFF";
      bs-hl-color="fb4934FF";
      inside-color="2828287F";
      inside-clear-color="2828287F";
      inside-wrong-color="2828287F";
      ring-clear-color="d65d0eFF";
      ring-wrong-color="cc241dff";
      ring-ver-color="b8bb26FF";
      inside-ver-color="2828287F";
      ring-color="689d6aff";
      line-clear-color="FFFFFF00";
      line-ver-color="FFFFFF00";
      line-wrong-color="FFFFFF00";
      separator-color="FFFFFF00";
      line-color="FFFFFF00";
      text-color="FFFFFFFF";
    };
  };
}
