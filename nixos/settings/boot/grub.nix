{ config, pkgs, input, ... }:
{
	boot.loader.grub.enable = true;
        boot.loader.grub.device = "/dev/nvme0";
        boot.loader.grub.useOSProber = true;
}
