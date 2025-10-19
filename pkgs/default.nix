{
  inputs,
  pkgs,
  system,
  ...
}:
{
  _2048 = pkgs.callPackage ./2048 { };
}
