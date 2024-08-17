{ pkgs, ... }:
{
  programs.fzf = {
    enable = true;
    
    enableZshIntegration = true;
    
    defaultCommand = "fd --hidden --strip-cwd-prefix --exclude .git";
    changeDirWidgetCommand = "fd --type=d --hidden --strip-cwd-prefix --exclude .git";
    defaultOptions = [
      "--color=fg:-1,fg+:#FBF1C7,bg:-1,bg+:#1D2021"
      "--color=hl:#98971A,hl+:#B8BB26,info:#928374,marker:#D65D0E"
      "--color=prompt:#CC241D,spinner:#689D6A,pointer:#D65D0E,header:#458588"
      "--color=border:#3C3836,label:#aeaeae,query:#FBF1C7"
      "--border='rounded' --border-label='' --preview-window='border-rounded' --prompt='> '"
      "--marker='>' --pointer='>' --separator='─' --scrollbar='│'"
      "--info='right'"
    ];
  };
}