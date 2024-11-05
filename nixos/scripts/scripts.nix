{config , pkgs, input, ...} :
{
    imports = [
        ./modules/bashlinking.nix
        ./modules/folderstructure.nix
    ];

}