{ config, pkgs, ...} :
{
  home.packages = [ pkgs.bspwm ];
   
  xdg.configFile."bspwm/bspwmrc".source = ./bspwmrc;

}
