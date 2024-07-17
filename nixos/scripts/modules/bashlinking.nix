{config , pkgs, input, ...} :
{
    system.activationScripts.binbash = {
        deps = [ "binsh" ];
        text = ''
            standard_bash_path="/bin/bash"
            nix_bash_path="/bin/sh/"

            if [ -e "$standard_bash_path" ]
            then
                echo "bashlinking-script: $standard_bash_path already exists"
            else
                ln -s "$nix_bash_path" "$standard_bash_path"
            fi
        '';
    };
}