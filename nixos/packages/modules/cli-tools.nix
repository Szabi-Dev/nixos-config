{ config, pkgs, ... }:
{
   environment.systemPackages = with pkgs; [
	pkgs.bat

	pkgs.neofetch
	# performance mointor
	pkgs.btop
	pkgs.htop
	# compress
	pkgs.unzip
	pkgs.unrar
	# vpn
	pkgs.openvpn
  ];
}
