{ default, ... }: 
{
  systems = ["x86_64-linux"];

  perSystem = {
    pkgs,
    inputs',
    ...
  }: {
    packages = {
      _2048 = pkgs.callPackage ./2048 {};
      
    };
  };
}