{ config, pkgs, ...} :
{
home.packages = [ 
	pkgs.zsh 
	pkgs.zsh-autosuggestions
	pkgs.zsh-autocomplete
];
programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;

  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

}
