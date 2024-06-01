{ config, pkgs, ... }:
{
  imports = [
    ./modules/dev-tools.nix
    ./modules/cli-tools.nix
    ./modules/dev-languages.nix
  ];
  # ...
}
