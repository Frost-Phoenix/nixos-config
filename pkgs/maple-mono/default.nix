{
  stdenv,
  python3,
  python3Packages,
  fetchPypi,
  inputs,
}:
let
  ufo-extractor = python3Packages.buildPythonPackage rec {
    pname = "ufo_extractor";
    version = "0.8.1";

    format = "pyproject";

    src = fetchPypi {
      inherit pname version;
      extension = "zip";
      sha256 = "sha256-5MK6NFjcwO4gOjoW2Ibzc25Qw2taTpBrl+XcxIbhhj0=";
    };

    build-system = with python3.pkgs; [
      setuptools
      setuptools-scm
    ];

    propagatedBuildInputs = with python3.pkgs; [
      fonttools
      fontfeatures
    ];

    doCheck = false;
  };

  foundrytools = python3Packages.buildPythonPackage rec {
    pname = "foundrytools";
    version = "0.1.4";

    format = "setuptools";

    src = fetchPypi {
      inherit pname version;
      sha256 = "sha256-pWHSIhj0g1jUs6ij5o2NGcDBrgJDBCXjQyJmSpYOxfo=";
    };

    propagatedBuildInputs = with python3.pkgs; [
      afdko
      cffsubr
      defcon
      dehinter
      fonttools
      setuptools
      ttfautohint-py
      ufo-extractor
      ufo2ft
      ufolib2
    ];

    doCheck = false;
  };

  foundrytools-cli = python3Packages.buildPythonPackage rec {
    pname = "foundrytools_cli";
    version = "2.0.3";

    format = "pyproject";

    src = fetchPypi {
      inherit pname version;
      sha256 = "sha256-d5fVfBlOOfTGyYnsYOwXRF9AG8bB55bAmjfRnXsvPbs=";
    };

    build-system = [ python3.pkgs.hatchling ];

    propagatedBuildInputs = with python3.pkgs; [
      foundrytools
      click
      loguru
      pathvalidate
      afdko
      rich
      fonttools
      ufolib2
    ];

    doCheck = false;
  };
in
stdenv.mkDerivation {
  pname = "maple-mono-custom";
  version = "v7.8";

  src = inputs.maple-mono;

  nativeBuildInputs = with python3.pkgs; [
    fonttools
    font-v
    glyphslib
    lxml
    cffsubr
    cu2qu
    defcon
    ttfautohint-py
    foundrytools-cli
  ];

  buildPhase = ''
    python build.py --no-nerd-font --feat cv66,ss05 --remove-tag-liga --ttf-only
  '';

  installPhase = ''
    mkdir -p $out/share/fonts/truetype
    cp -a fonts/TTF-AutoHint $out/share/fonts/truetype/
  '';
}
