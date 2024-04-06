{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };
}
