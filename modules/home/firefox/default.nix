{ config, pkgs, theme, inputs, ... }:

{
  programs.firefox =
    let
      userChrome = pkgs.substituteAll {
        src = ./userChrome.css;
      };
    in
    {
      enable = true;
      package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
        extraPolicies = {
          CaptivePortal = false;
          DisableFirefoxStudies = true;
          DisablePocket = true;
          DisableTelemetry = true;
          DisableFirefoxAccounts = true;
          NoDefaultBookmarks = true;
          OfferToSaveLogins = false;
          OfferToSaveLoginsDefault = false;
          PasswordManagerEnabled = false;
          FirefoxHome = {
            Search = false;
            Pocket = false;
            Snippets = false;
            TopSites = false;
            Highlights = false;
          };
          UserMessaging = {
            ExtensionRecommendations = false;
            SkipOnboarding = true;
          };
        };
      };
      profiles = {
        default = {
          id = 0;
          name = "fahim";
          search = {
            force = true;
            default = "Google";
            engines = {
              "NixOS Search" = {
                urls = [{ template = "https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query={searchTerms}"; }];
                iconUpdateURL = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000;
                definedAliases = [ "@ns" ];
              };
              "Wikipedia (en)".metaData.alias = "@wiki";
              "Amazon.com".metaData.hidden = true;
              "Bing".metaData.hidden = true;
              "eBay".metaData.hidden = true;
            };
          };
          settings = {
            "general.smoothScroll" = true;
            "browser.toolbars.bookmarks.visibility" = "never";
            "privacy.webrtc.legacyGlobalIndicator" = false;
            "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
            "browser.compactmode.show" = true;
          };
          extensions = with pkgs.nur.repos.rycee.firefox-addons; [
            ublock-origin
            # duckduckgo-privacy-essentials
            languagetool
            news-feed-eradicator
            tabliss
            videospeed
          ];
          userChrome = builtins.readFile userChrome;
        };
      };
    };
}
