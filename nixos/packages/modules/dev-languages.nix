{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
	      pkgs.jdk8
	      pkgs.jdk17	
        pkgs.jdk21

        pkgs.python3

        pkgs.rustup

        pkgs.nodejs_18
        pkgs.nodejs_20
        pkgs.nodejs_22
  ];

  environment.sessionVariables.JAVA_8_HOME="${pkgs.jdk8.home}";
  environment.sessionVariables.JAVA_17_HOME="${pkgs.jdk17.home}";
  environment.sessionVariables.JAVA_21_HOME="${pkgs.jdk21.home}";
  environment.sessionVariables.JAVA_HOME="${pkgs.jdk17.home}";  


  environment.sessionVariables.NPM_18_HOME="${pkgs.nodejs_18}";
  environment.sessionVariables.NPM_20_HOME="${pkgs.nodejs_20}";
  environment.sessionVariables.NPM_22_HOME="${pkgs.nodejs_22}";

}
