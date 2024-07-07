{ config, pkgs, ...} :
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  enableAutosuggestions.enable = true;
  syntaxHighlighting.enable = true;

  oh-my-zsh = {
  	enable = true;
	theme = "robbyrussel";
	plugins = [
		"git"
		"history"
	];
  };
  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

}
