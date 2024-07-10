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
                  vscjava.vscode-spring-initializr
                  redhat.java

                  bbenoist.nix

                  vscode-icons-team.vscode-icons
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
                  {
                    name = "everforest";
                    publisher = "sainnhe";
                    version = "0.3.0";
                    sha256 = "1dbkk2nys97a825kvrmjh6qgjzfricllwjwh9qcsvmycbg6sp64x";
                  }
      ];
    };

  # xdg.configFile."Code/User/settings.json".text = ''
  #   "workbench.startupEditor": "none",
  #   "workbench.colorTheme": "Everforest Dark",
  #   "workbench.iconTheme": "vscode-icons",

  #   "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
  #   "editor.fontSize": 15,
  #   "editor.minimap.enabled": false,
  #   "editor.smoothScrolling": true,
  #   "editor.suggest.insertMode": "replace",
  #   "editor.inlineSuggest.enabled": true,
  # '';

}

