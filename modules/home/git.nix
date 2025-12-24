{ pkgs, username, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Frost-Phoenix";
        email = "67cyril6767@gmail.com";
      };

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
        "git@github.com:frost-phoenix/".insteadOf = "fp:";
      };

      core.excludesFile = "/home/${username}/.config/git/.gitignore";
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;

    options = {
      line-numbers = true;
      side-by-side = false;
      diff-so-fancy = true;
      navigate = true;
    };
  };

  home.packages = with pkgs; [
    gh
    serie
  ];

  xdg.configFile."git/.gitignore".text = ''
    .vscode
  '';

  programs.zsh.shellAliases = {
    g = "lazygit";
    gf = "onefetch --number-of-file-churns 0 --no-color-palette";

    gs = "git status";
    gcl = "git clone";
    gd = "git diff";

    ga = "git add";
    gaa = "git add --all";

    gc = "git commit";
    gcm = "git commit -m";

    gpl = "git pull";
    gplo = "git pull origin";

    gps = "git push";
    gpso = "git push origin";
    gpst = "git push --tags";
    gtag = "git tag -ma";

    gm = "git merge";
    gb = "git branch";
    gch = "git checkout";
    gchb = "git checkout -b";

    glg = "serie";
    glog = "git log --oneline --decorate --graph";
    glol = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'";
    glola = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all";
    glols = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat";
  };
}
