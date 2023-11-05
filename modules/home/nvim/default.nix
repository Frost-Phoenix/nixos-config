{ pkgs, ... }:
let
  neovim-config = pkgs.fetchFromGitHub {
    owner = "samiulbasirfahim";
    repo = "neovim";
    rev = "a3344302921b59ecb24c167c9dc64bc8df4803da";
    sha256 = "9RVtU+bx8pBSYd66PU0F+e1FlRWbju035RQ2p7DZLGk=";
  };
in
{
 xdg.configFile."nvim".source = neovim-config;
 programs.neovim.enable = true;
}
