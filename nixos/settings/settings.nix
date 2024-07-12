{ config, pkgs, input, ... }:
{
	imports = [
		./boot/default.nix
		./audio/default.nix
		./network/default.nix
		./locale/default.nix
	];
}
