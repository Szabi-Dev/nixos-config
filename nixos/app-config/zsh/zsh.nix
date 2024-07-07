{ config, pkgs, ...} :
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  enableAutosuggestions.enable = true;
  syntaxHighlighting.enable = true;

  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

}
