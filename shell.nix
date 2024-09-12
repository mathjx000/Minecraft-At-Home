# Development environement.

{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let
	sdk = dotnetCorePackages.dotnet_8.sdk;
in
mkShellNoCC {
	name = "dotnet-env";
	packages = [ sdk ];

	# Environement variable
	DOTNET_ROOT = "${sdk}";
}
