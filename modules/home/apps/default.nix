{ pkgs, ... }:
{
  imports = [
    ../programs/alacritty
    ../programs/vscodium
  ];

  home.packages = with pkgs; [
    brave
    discord
    slack
    nemo
    obsidian
  ];
  services.syncthing.enable = true;
}
