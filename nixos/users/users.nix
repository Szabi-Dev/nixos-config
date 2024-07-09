{ config, pkgs, input, ...}:
{
	users.users.szabolcs = {
    		isNormalUser = true;
    		description = "szabolcs";
    		extraGroups = [ "networkmanager" "wheel" "docker" ];
    		shell = pkgs.zsh;
    		packages = with pkgs; [
        		zsh
    		];
  };

}
