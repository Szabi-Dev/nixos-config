{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	pkgs.wget
	pkgs.git
	pkgs.curl
  ];
 
}
