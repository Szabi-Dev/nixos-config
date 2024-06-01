{ config, pkgs, ...} :
{
  home.packages = [ pkgs.kitty ];
 
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
  xdg.configFile."kitty/gruvbox.theme".source = ./gruvbox.theme;

}
