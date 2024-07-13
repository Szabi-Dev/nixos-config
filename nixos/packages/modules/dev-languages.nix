{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
	      pkgs.jdk8
	      pkgs.jdk17	

        pkgs.python3
  ];

  environment.sessionVariables.JAVA_8_HOME="${pkgs.jdk8.home}";
  environment.sessionVariables.JAVA_17_HOME="${pkgs.jdk17.home}";


  environment.sessionVariables.JAVA_HOME="${pkgs.jdk17.home}";  
}
