{pkgs, ...}: {
  programs.bottom = {
    enable = true;
    settings = {
      styles.theme = "gruvbox";
    };
  };
}
