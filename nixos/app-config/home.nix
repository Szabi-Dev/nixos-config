{ config, pkgs, ...} :
{
   home.username="szabolcs";
   home.homeDirectory="/home/szabolcs";

   home.stateVersion="23.11";
   programs.home-manager.enable = true;
	

    imports = [
	./kitty/kitty.nix
    ];
}
