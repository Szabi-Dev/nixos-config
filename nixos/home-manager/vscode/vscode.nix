{ config, pkgs, ...}:
{
	programs.vscode = {
  		enable = true;
		package = pkgs.vscodium;
  		extensions = with pkgs.vscode-extensions; [
                  vscjava.vscode-java-debug
                  vscjava.vscode-java-dependency
                  vscjava.vscode-java-test
                  vscjava.vscode-spring-initializr
                  vscjava.vscode-maven
                  redhat.java
  		];

                userSettings = {
                  "java.configuration.runtimes": "[
                   {
                       "name": "JavaSE-1.8",
                       "path": "${JAVA_8_HOME}",
                    },
                    {
                      "name": "JavaSE-17",
                      "path": "${JAVA_17_HOME}",
                      },
                  ]"
                }
};
}
