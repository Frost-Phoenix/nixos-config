{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "Frost-Phoenix";
    userEmail = "67cyril6767@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };

    environment.shellAliases = {
      # Git aliases
      ga = "git add";
      gaa = "git add --all";
      gs = "git status";
      gb = "git branch";
      gm = "git merge";
      gpl = "git pull";
      gplo = "git pull origin";
      gps = "git push";
      gpso = "git push origin";
      gc = "git commit";
      gcm = "git commit -m";
      gch = "git checkout";
      gchb = "git checkout -b";
      gcoe = "git config user.email";
      gcon = "git config user.name";

      g = "lazygit";
    };
  };

  home.packages = [ pkgs.gh ];
}
