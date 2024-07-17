{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	# misc
	pkgs.wget
	pkgs.git
	pkgs.curl
	# editor
 	pkgs.jetbrains.idea-ultimate
	#browser
	pkgs.brave
	pkgs.chromium
	# testing tools
	pkgs.postman	
	# container
	pkgs.docker
	# cryptography 
	pkgs.openssl
 ];


 virtualisation.docker = {
	enable = true;
 };
  
 
}
