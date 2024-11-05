{config , pkgs, input, ...} :
{
    environment.sessionVariables.PROJECTS_HOME="$HOME/projects"; 

    system.activationScripts.binbash = {
        deps = [ "binsh" ];
        text = ''
            mkdir -p $PROJECTS_HOME
        '';
    };
}