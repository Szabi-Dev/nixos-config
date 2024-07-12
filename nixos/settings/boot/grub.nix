{ config, pkgs, input, ... }:
{
	boot.loader.grub.enable = true;
        boot.loader.grub.device = "/dev/nvme0n1";
        boot.loader.grub.useOSProber = true;
}
