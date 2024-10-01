{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	# misc
	pkgs.wget
	pkgs.git
	pkgs.curl
	pkgs.gh
	# editor
 	pkgs.jetbrains.idea-ultimate
	pkgs.jetbrains.idea-community
	#browser
	pkgs.brave
	pkgs.chromium
	# testing tools
	pkgs.postman	
	# container
	pkgs.docker
	# cryptography 
	pkgs.openssl
	# self signed certificates
	pkgs.mkcert
 ];


 virtualisation.docker = {
	enable = true;
 };
  
 
}
