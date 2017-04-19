let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
in rec {
  rubyEnv = stdenv.mkDerivation rec {
    name = "ruby193-env";
    version = "1.9.3";
    src = ./.;
    buildInputs = [
      pkgs.postgresql91
      pkgs.ruby_1_9
      pkgs.vim
      pkgs.git
    ];
  };
}
