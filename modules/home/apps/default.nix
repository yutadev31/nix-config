{ pkgs, ... }:
{
  imports = [
    ../programs/alacritty
    ../programs/vscodium
    ./desktop-entries.nix
  ];

  home.packages = with pkgs; [
    brave
    discord
    slack
    nemo
  ];
  services.syncthing.enable = true;
}
