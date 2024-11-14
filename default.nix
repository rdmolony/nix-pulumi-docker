let
  pkgs = import <nixpkgs> { };
in
{
  pulumi-docker = pkgs.python312Packages.callPackage ./pulumi-docker.nix { };
}