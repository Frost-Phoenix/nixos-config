{ pkgs, username, ... }:
{
  programs.git = {
    enable = true;

    userName = "nikon112";
    userEmail = "40752251+nikon112@users.noreply.github.com";

    extraConfig = {
      init.defaultBranch = "main";
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
      pull.ff = "only";
      color.ui = true;
      url = {
        "git@github.com:".insteadOf = [
          "gh:"
          "https://github.com/"
        ];
        "git@github.com:nikon112/".insteadOf = "fp:";
      };
      core.excludesFile = "/home/${username}/.config/git/.gitignore";
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = false;
        diff-so-fancy = true;
        navigate = true;
      };
    };
  };

  home.packages = [ pkgs.gh ]; # pkgs.git-lfs

  xdg.configFile."git/.gitignore".text = ''
    .vscode
  '';

  programs.zsh.shellAliases = {
    g = "lazygit";
    gf = "onefetch --number-of-file-churns 0 --no-color-palette";
    ga = "git add";
    gaa = "git add --all";
    gs = "git status";
    gb = "git branch";
    gm = "git merge";
    gd = "git diff";
    gpl = "git pull";
    gplo = "git pull origin";
    gps = "git push";
    gpso = "git push origin";
    gpst = "git push --follow-tags";
    gcl = "git clone";
    gc = "git commit";
    gcm = "git commit -m";
    gcma = "git add --all && git commit -m";
    gtag = "git tag -ma";
    gch = "git checkout";
    gchb = "git checkout -b";
    glog = "git log --oneline --decorate --graph";
    glol = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'";
    glola = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all";
    glols = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat";
  };
}
