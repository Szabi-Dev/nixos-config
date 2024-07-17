{config , pkgs, input, ...} :
{
    system.activationScripts.binbash = {
        deps = [ "binsh" ];
        text = ''
            bash_path="/bin/bash"

            if [ -e $bash_path ]
            then
                echo "$bash_path already exists"
            else
                ln -s /bin/sh /bin/bash
            fi
        '';
    };
}