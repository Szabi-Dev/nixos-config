{ config, pkgs, ...} :
{
  home.packages = [ pkgs.bspwm ];
   
  services.xserver.windowManager.bspwm.enable = true;
 
  xdg.configFile."bspwm/bspwmrc".source = ./bspwmrc;

}
