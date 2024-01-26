{
  systems = ["x86_64-linux"];

  perSystem = {
    pkgs,
    inputs',
    ...
  }: {
    packages = {
      # instant repl with automatic flake loading
      _2048 = pkgs.callPackage ./2048 {};
    };
  };
}