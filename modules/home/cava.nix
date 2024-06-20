{ inputs, pkgs, ... }: 
{
  programs.cava = {
    enable = true;  
  };
  
  # https://github.com/catppuccin/cava
  home.file.".config/cava/config".text = ''
    # custom cava config
  '' + builtins.readFile "${inputs.catppuccin-cava}/themes/mocha.cava";
}
