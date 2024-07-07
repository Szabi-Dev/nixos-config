{ config, pkgs, ...} :
{
programs.zsh = {
  enable = true;
  enableCompletion = true;

  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

}
