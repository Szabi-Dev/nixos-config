{ config, pkgs, ...}:
{
	programs.vscode = {
  		enable = true;
		package = pkgs.vscodium;
  		extensions = with pkgs.vscode-extensions; [
                  vscjava.vscode-java-pack
                  vscjava.vscode-spring-initializr
  		];
};
}
