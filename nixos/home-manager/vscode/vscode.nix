{ config, pkgs, lib, ...}:
{
    nixpkgs.config.allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) [
        # Add additional package names here
        "vscode"
    ];
    
    programs.vscode = {
  		enable = true;
		package = pkgs.vscode;
  		extensions = with pkgs.vscode-extensions; [
                  vscjava.vscode-java-debug
                  vscjava.vscode-java-dependency
                  vscjava.vscode-java-test
                  vscjava.vscode-spring-initializr
                  vscjava.vscode-maven
                  vscjava.vscode-gradle
                  redhat.java

                  vscode-icons-team.vscode-icons
                ]; 
                #++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
#
 #                 {
 #                   name = "everforest";
 #                   publisher = "sainnhe";
 #                   version = "0.3.0";
 #                   sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
 #                 }
 #               ];
    };
}

