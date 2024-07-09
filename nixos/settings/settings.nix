{ config, pkgs, input, ... }:
{
	imports = [
		./boot/grub.nix
		./audio/default.nix
		./network/default.nix
		./locale/default.nix
	];
}
