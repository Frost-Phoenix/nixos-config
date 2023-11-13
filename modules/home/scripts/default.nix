{pkgs, ...}: let
  wall-change = pkgs.writeShellScriptBin "wall-change" ''swaybg -m fill -i $1'';
  wallpaper-picker = pkgs.writeShellScriptBin "wallpaper-picker" (builtins.readFile ./scripts/wallpaper-picker.sh);
  push = pkgs.writeShellScriptBin "push" (builtins.readFile ./scripts/push.sh);
  commit = pkgs.writeShellScriptBin "commit" (builtins.readFile ./scripts/commit.sh);
  dsize = pkgs.writeShellScriptBin "dsize" (builtins.readFile ./scripts/dsize.sh);
  runbg = pkgs.writeShellScriptBin "runbg" (builtins.readFile ./scripts/runbg.sh);
  music = pkgs.writeShellScriptBin "music" (builtins.readFile ./scripts/music.sh);
  toogle_blur = pkgs.writeScriptBin "toogle_blur" (builtins.readFile ./scripts/toogle_blur.sh);
  toogle_oppacity = pkgs.writeScriptBin "toogle_oppacity" (builtins.readFile ./scripts/toogle_oppacity.sh);
  maxfetch = pkgs.writeScriptBin "maxfetch" (builtins.readFile ./scripts/maxfetch.sh);
  lofi = pkgs.writeScriptBin "lofi" (builtins.readFile ./scripts/lofi.sh);
in {
  home.packages = with pkgs; [
    wall-change
    wallpaper-picker
    
    push
    commit

    dsize
    runbg
    music
  
    toogle_blur
    toogle_oppacity

    maxfetch

    lofi
  ];
}
