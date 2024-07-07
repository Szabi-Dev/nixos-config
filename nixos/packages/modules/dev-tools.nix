{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	# misc
	pkgs.wget
	pkgs.git
	pkgs.curl
	#idea
 	pkgs.jetbrains.idea-ultimate

	# container
	pkgs.docker
 ];


 virtualisation.docker = {
	enable = true;
	rootles = {
	  enable = true;
	  setSocketVariable = true;
	};
 };
  
 
}
