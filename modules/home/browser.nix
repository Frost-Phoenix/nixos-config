{ inputs, pkgs, host, ... }:
{
  home.packages = (with pkgs; [
    floorp
    (if (host == "laptop") then
      inputs.zen-browser.packages."${system}".generic
    else
      inputs.zen-browser.packages."${system}".specific)
  ]);
}
