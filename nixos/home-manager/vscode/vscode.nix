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
                  redhat.java

                  dracula-theme.theme-dracula
  		];
    };
}

