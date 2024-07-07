{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	# misc
	pkgs.wget
	pkgs.git
	pkgs.curl
	#idea
 	pkgs.jetbrains.idea-ultimate
	#browser
	pkgs.brave
	pkgs.chromium
	
	# container
	pkgs.docker
 ];


 virtualisation.docker = {
	enable = true;
 };
  
 
}
