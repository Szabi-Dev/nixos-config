{ config, pkgs, ... }:
{
   environment.systemPackages = with pkgs; [
	pkgs.bat
	pkgs.neofetch
	pkgs.btop
	pkgs.htop
	pkgs.unzip
	pkgs.openvpn
  ];
}
