let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
in rec {
  racketEnv = stdenv.mkDerivation rec {
    name = "racket";
    buildInputs = [
      pkgs.racket
    ];
  };
}
