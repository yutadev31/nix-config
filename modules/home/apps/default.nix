{ inputs, pkgs, ... }:
{
  imports = [
    ../programs/alacritty
    ../programs/vscodium
  ];

  home.packages = with pkgs; [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    discord
    slack
    nemo
  ];
  services.syncthing.enable = true;
}
