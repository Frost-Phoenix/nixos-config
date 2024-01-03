rec{
  overlay = final: prev:
    let
      dirContents = builtins.readDir ../pkgs;
      genPackage = name: {
        inherit name;
        value = final.callPackage (../pkgs/_2048) { };
      };
      names = builtins.attrNames dirContents;
    in
    builtins.listToAttrs (map genPackage names);
}
