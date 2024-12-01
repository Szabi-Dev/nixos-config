{config, pkgs, ...}:
{
     environment.systemPackages = with pkgs; [
       # email client
       pkgs.thunderbird
       pkgs.unetbootin
  ];

}