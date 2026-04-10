{
  description = "Nebula Nix Channel by afeldman";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        packages = {
          cpctl = pkgs.callPackage ./pkgs/cpctl/default.nix {};
          default = pkgs.callPackage ./pkgs/cpctl/default.nix {};
        };
      });
}
