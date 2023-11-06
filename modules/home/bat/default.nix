{ pkgs, ... }: 
{
  programs.bat = {
    enable = true;
    config.theme = "base16";
    # config.theme = "Monokai Extended";
  };
}