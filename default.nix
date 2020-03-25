{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let
  gitignore = callPackage (fetchFromGitHub {
    owner = "siers";
    repo = "nix-gitignore";
    rev = "221d4aea15b4b7cc957977867fd1075b279837b3";
    sha256 = "0xgxzjazb6qzn9y27b2srsp2h9pndjh3zjpbxpmhz0awdi7h8y9m";
  }) {};
  ocaml = callPackage ./nix/ocaml.nix { };
  mkOcamlPackages =  (callPackage <nixpkgs/pkgs/top-level/ocaml-packages.nix> {}).mkOcamlPackages;
  ocamlPackages = mkOcamlPackages ocaml (self: super: { });
in
stdenv.mkDerivation {
  name = "gra";
  src = gitignore.gitignoreSourcePure "" ./.;
  buildInputs = [ ocaml ] ++ (with ocamlPackages; [ menhir ]);
  phase = [ "installPhase" ];

  installPhase = ''
    TMP=$(mktemp -d)
    cp -r src $TMP
    menhir --base $TMP/src/parser src/parser.mly
    ocamllex -o $TMPsrc/lexer.ml src/lexer.mll
    bsb -make-world
    mkdir -p $out/bin
  '';
}
