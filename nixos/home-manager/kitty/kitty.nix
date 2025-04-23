{ config, pkgs, ...} :
{
  home.packages = [ pkgs.kitty ];
 
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
  
  xdg.configFile."kitty/catpuccin_frappe.theme".source = ./themes/catpuccin_frappe.theme;
  xdg.configFile."kitty/everforest.theme".source = ./themes/everforest.theme;
  xdg.configFile."kitty/gruvbox_material_dark.theme".source = ./themes/gruvbox_material_dark.theme;
  xdg.configFile."kitty/gruvbox.theme".source = ./themes/gruvbox.theme;
  xdg.configFile."kitty/tokyo_night_storm.theme".source = ./themes/tokyo_night_storm.theme;
  xdg.configFile."kitty/atom_one_light.theme".source = ./themes/atom_one_light.theme;
  
}
