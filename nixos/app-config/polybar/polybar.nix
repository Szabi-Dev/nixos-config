{ config, pkgs, ...} :
{
  home.packages = [ pkgs.polybar ];
  xdg.configFile."polybar/colors.ini".source = ./colors.ini;
  xdg.configFile."polybar/config.ini".source = ./config.ini;
  xdg.configFile."polybar/modules.ini".source = ./modules.ini;
  xdg.configFile."polybar/launch.sh".source = ./launch.sh;
}
