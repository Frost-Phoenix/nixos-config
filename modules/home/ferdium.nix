{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ ferdium ]);
}