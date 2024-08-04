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
      indicator-radius = 111;
      indicator-thickness = 8;
      
      effect-blur = "7x5";
      effect-vignette = "0.75:0.75";
      effect-pixelate = 5;
      
      font="JetBrainsMono Nerd Font";

      text-wrong-color="FFFFFFFF";
      text-ver-color="FFFFFFFF";
      text-clear-color="FFFFFFFF";
      key-hl-color="fabd2fFF";
      bs-hl-color="fb4934FF";
      ring-clear-color="d65d0eFF";
      ring-wrong-color="cc241dff";
      ring-ver-color="b8bb26FF";
      ring-color="689d6aff";
      line-clear-color="FFFFFF00";
      line-ver-color="FFFFFF00";
      line-wrong-color="FFFFFF00";
      separator-color="FFFFFF00";
      line-color="FFFFFF00";
      text-color="FFFFFFFF";
      inside-color="3C3836CC";
      inside-ver-color="3C3836CC";
      inside-clear-color="3C3836CC";
      inside-wrong-color="3C3836CC";
    };
  };
}
