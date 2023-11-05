{ pkgs, ... }: {
  programs.git.enable = true;
  programs.git.userName = "Frost-Phoenix";
  programs.git.userEmail = "67cyril6767@gmail.com";
  home.packages = [ pkgs.gh ];
}
