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
  };

  home.packages = [ pkgs.gh pkgs.git-lfs ];
}
