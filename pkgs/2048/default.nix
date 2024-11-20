#let pkgs = import <nixpkgs> {}; in
{
  stdenv,
  fetchFromGitHub,
  pkgs,
  ...
}:

with pkgs;

stdenv.mkDerivation rec {
  pname = "2048";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "Frost-Phoenix";
    repo = "2048-cli";
    rev = "e5b5e2b";
    sha256 = "sha256-DqOSfKQC7WdslEknzFByZPc20AsjX6+5PwKR3gqucOM=";
  };

  buildInputs = [ ];

  buildPhase = ''
    make release
  '';

  installPhase = ''
    mkdir -p $out/bin
    make install INSTALL_DIR=$out/bin
    chmod +x $out/bin/2048
  '';
}
