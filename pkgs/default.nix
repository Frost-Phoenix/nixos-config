{
  inputs,
  pkgs,
  system,
  ...
}:
{
  _2048 = pkgs.callPackage ./2048 { };
  maple-mono-custom = pkgs.callPackage ./maple-mono { inherit inputs; };
}
