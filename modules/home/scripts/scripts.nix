{ pkgs, ... }:
let
  scriptDir = ./scripts;
  scriptEntries = builtins.readDir scriptDir;

  regularFiles = builtins.filter (name: scriptEntries.${name} == "regular") (
    builtins.attrNames scriptEntries
  );

  shellScripts = builtins.filter (
    name: builtins.match ".*\\.sh$" name != null
  ) regularFiles;

  mkScript = name: {
    name = name;
    value = pkgs.writeScriptBin (builtins.replaceStrings [ ".sh" ] [ "" ] name) (
      builtins.readFile (scriptDir + "/${name}")
    );
  };

  scriptsSet = builtins.listToAttrs (map mkScript shellScripts);
  scripts = builtins.attrValues scriptsSet;
in
{
  home.packages = scripts;
}
