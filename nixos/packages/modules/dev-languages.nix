{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
	pkgs.jdk8
	pkgs.jdk17	
  ];

  environment.sessionVariables.JAVA_8_HOME="${pkgs.jdk8.home}/lib/openjdk";
  environment.sessionVariables.JAVA_17_HOME="${pkgs.jdk17.home}/lib/openjdk";
  
}
