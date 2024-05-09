{ pkgs ? import <nixpkgs> {} }:

let
  # Import the other Nix file where the global variable is defined
  configFile = ./config.nix;
  config = import configFile;

  # Define the install phase where we output the value of the imported variable
  installPhase = ''
    mkdir -p $out
    echo "The value of the global variable is: ${config.globalVariable}"
  '';
in

pkgs.stdenv.mkDerivation {
  name = "example";
  src = ./.;
  phases = [ "installPhase" ];
  # Explicitly define the out symlink
  installPhase = installPhase;
}
