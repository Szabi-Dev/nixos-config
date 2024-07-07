{ config, pkgs, ...} :
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  syntaxHighlighting.enable = true;
  
  oh-my-zsh = {
	enable = true;
	theme = "robbyrussell";
  	plugins = [
		"git"
	];
  };


  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

}
