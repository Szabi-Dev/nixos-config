{config, pkgs, ...}:
{
     environment.systemPackages = with pkgs; [
       # email client
       pkgs.thunderbird
       pkgs.unetbootin
       pkgs.rpi-imager
       pkgs.libreoffice-still
       pkgs.calibre

  ];

}
