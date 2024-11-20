{
  stdenv,
  requireFile,
  nerd-font-patcher,
  python3Packages,
  monolisa,
  lib,
}:
stdenv.mkDerivation rec {
  name = "monolisa-nerd";
  version = "${monolisa.version}-${nerd-font-patcher.version}";

  # src = import ./monolisa.nix;
  src = monolisa;

  nativeBuildInputs =
    [ nerd-font-patcher ]
    ++ (with python3Packages; [
      python
      fontforge
    ]);

  buildPhase = ''
    runHook preBuild
    mkdir -p build/
    for f in share/fonts/truetype/*; do
      nerd-font-patcher $f --complete --no-progressbars --outputdir build
      # note: this will *not* return an error exit code on failure, but instead
      # write out a corrupt file, so an additional check phase is required
    done
    runHook postBuild
  '';

  doCheck = true;
  checkPhase = ''
    runHook preCheck

    # Try to open each font. If a corrupt font was written out, this should fail
    for f in build/*; do
        fontforge - <<EOF
    try:
      fontforge.open(''\'''${f}')
    except:
      exit(1)
    EOF
    done

    runHook postCheck
  '';

  installPhase = ''
    runHook preInstall

    install_path=$out/share/fonts/truetype
    mkdir -p $install_path
    install -Dm 444 build/* $install_path

    runHook postInstall
  '';

  meta = with lib; {
    homepage = "https://github.com/ryanoasis/nerd-fonts";
    description = "Monolisa patched with Nerd Fonts icons";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
