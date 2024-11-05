{ config, pkgs, ...} :
{
  home.packages = [ pkgs.kitty ];
 
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
  xdg.configFile."kitty/gruvbox.theme".source = ./gruvbox.theme;
  xdg.configFile."kitty/gruvbox_material_dark.theme".source = ./gruvbox_material_dark.theme;

}
