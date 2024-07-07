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

xdg.configFile."zsh/aliases/general".source = ./alias/general;
xdg.configFile."zsh/aliases/java".source = ./alias/java;
xdg.configFile."zsh/aliases/node".source = ./alias/node;


home.file.".zshrc".text = ''
	# Custom ZSH Binds
	bindkey '^ ' autosuggest-accept

	# Load aliases and shortcuts if existent.
	ZSH_ALIAS_HOME=$HOME/.config/zsh/aliases/
	if [ -d "$ZSH_ALIAS_HOME" ]; then 
    		for FILE in $ZSH_ALIAS_HOME/* ; do source $FILE ; done
	fi
'';

}
