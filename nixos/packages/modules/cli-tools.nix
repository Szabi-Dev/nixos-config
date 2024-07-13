{ config, pkgs, ... }:
{
   environment.systemPackages = with pkgs; [
        #misc
        pkgs.bat
        pkgs.jq
		pkgs.neofetch
		# performance monitor
		pkgs.btop
		pkgs.htop
		# compress
		pkgs.unzip
		pkgs.unrar
		# vpn
		pkgs.openvpn
  ];
}
