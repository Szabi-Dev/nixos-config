{ config, pkgs, ...} :
{
    imports = [
	./bspwm/bspwm.nix	
	./picom/picom.nix	
	./polybar/polybar.nix	
	./sxhkd/sxhkd.nix	
    ];
}
