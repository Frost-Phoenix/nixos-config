{ pkgs, ... }:
{
  home.packages = with pkgs; [ pomo ];

  xdg.configFile."pomo/pomo.yaml".source = ./pomo.yaml;
  xdg.configFile."pomo/pomo.png".source = ./pomo.png;
}
