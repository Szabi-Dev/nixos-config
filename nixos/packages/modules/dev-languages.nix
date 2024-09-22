{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
	      pkgs.jdk8
	      pkgs.jdk17	

        pkgs.python3

        pkgs.nodejs_16
        pkgs.nodejs_20
        pkgs.nodejs_22
  ];

  environment.sessionVariables.JAVA_8_HOME="${pkgs.jdk8.home}";
  environment.sessionVariables.JAVA_17_HOME="${pkgs.jdk17.home}";
  environment.sessionVariables.JAVA_HOME="${pkgs.jdk17.home}";  


  environment.sessionVariables.NPM_16_HOME="${pkgs.nodejs_16}";
  environment.sessionVariables.NPM_20_HOME="${pkgs.nodejs_20}";
  environment.sessionVariables.NPM_22_HOME="${pkgs.nodejs_22}";

}
