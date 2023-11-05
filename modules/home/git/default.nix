{ pkgs, ... }: {
  
  programs.git = {
    enable = true;
    
    userName = "Frost-Phoenix";
    userEmail = "67cyril6767@gmail.com";
  };

  home.packages = [ pkgs.gh ];

  home.configFile."git/config".source = ./config;
}
