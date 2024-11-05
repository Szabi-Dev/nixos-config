{ config, pkgs, ...} :
{
   home.username="szabolcs";
   home.homeDirectory="/home/szabolcs";

   home.stateVersion="23.11";
   programs.home-manager.enable = true;

   home.file."projects".directory = {
        user = "szabolcs;
        permissions = "0750";
   };

    imports = [
	./kitty/kitty.nix
	./zsh/zsh.nix
	./vscode/vscode.nix
	./vim/vim.nix
    ./variety/variety.nix
    ];


}
