{ stdenv, fetchFromGitHub, }:
let
  src = fetchFromGitHub {
    owner = "BuckleScript";
    repo = "bucklescript";
    rev = "fbce42e10fdf8b7f298b08faba90c0db6d182906";
    sha256 = "00nmzndkh8qmb2bj150r0mxp55mywxa96p4jkxi8ii3wdxzx8wg7";
  };
in
stdenv.mkDerivation {
  version = "4.02.3";
  name = "ocaml-4.02.3+buckle-4.0.14";
  inherit src;
  configurePhase = ''
    cd vendor/ocaml
    ./configure -prefix $out
  '';
  buildPhase = ''
    make world.opt
  '';
  installPhase = ''
    make install
  '';

  meta = with stdenv.lib; {
    homepage = http://caml.inria.fr/ocaml;
    branch = "4.02";
    description = "Most popular variant of the Caml language";
    platforms = with platforms; linux ++ darwin;
  };
}
