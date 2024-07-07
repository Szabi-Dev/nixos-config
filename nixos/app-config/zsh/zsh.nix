{ config, pkgs, ...} :
{
home.packages = [ 
	pkgs.zsh 
	pkgs.zsh-autosuggestions
	pkgs.zsh-syntax-highlighting
	pkgs.zsh-autocomplete
];


programs.zsh = {
  enable = true;
  enableCompletion = true;

  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

users.users.szabolcs.shell = pkgs.zsh;

}
