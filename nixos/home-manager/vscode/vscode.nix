{ config, pkgs, ...}:
{
	programs.vscode = {
  		enable = true;
  		extensions = with pkgs.vscode-extensions; [
			# general
    			alefragnani.project-manager
    			usernamehw.errorlens
    			# angular
    			esbenp.prettier-vscode
    			Angular.ng-template
    			# appearence 
    			sainnhe.everforest
  		];
};
}
