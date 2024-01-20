{ pkgs, lib, config, username, ... }: 
{
  programs.firefox = {
    enable = true;

    profiles.${username} = {
      settings = {};
      isDefault = true;
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        return-youtube-dislikes
        i-dont-care-about-cookies
        # youtube-time-tracker
        firefox-color
        stylus
        scroll_anywhere
        clearurls
      ];
      extraConfig = builtins.readFile ./user.js;
    };
  };
}