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
	pkgs.jetbrains.webstorm
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
    # ai assistant in the terminal
    pkgs.aider-chat
 ];


 virtualisation.docker = {
	enable = true;
 };

 environment.sessionVariables.PROJECTS_HOME="$HOME/projects";
  
 
}
