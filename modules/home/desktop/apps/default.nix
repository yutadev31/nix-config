{
  lib,
  pkgs,
  extraApps,
  ...
}:
{
  imports = [
    ./alacritty
    ./vscodium
    ./extra.nix
  ];

  home.packages = with pkgs; [
    brave
    discord
    slack
    nemo
    obsidian
  ];

  # Syncthing
  services.syncthing.enable = true;

  # Other Applications
  programs.google-chrome.enable = true;
}
