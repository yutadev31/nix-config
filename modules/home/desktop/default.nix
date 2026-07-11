{ pkgs, ... }:
{
  imports = [
    ./fcitx5
    ./keyring.nix
    ./niri
    ./rofi
    ./sway
    ./swayidle
    ./swaylock
    ./swaync
    ./theme.nix
    ./waybar
  ];

  home.packages = with pkgs; [
    xdg-user-dirs
    xdg-utils
    dconf
    wl-clipboard
    playerctl
    pavucontrol
    brightnessctl
    hyprpicker
    libnotify
    xwayland-satellite
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    easyeffects
    awww
    cliphist
  ];

  services.gammastep = {
    enable = true;
    provider = "manual";
    latitude = 35.6;
    longitude = 139.6;
    temperature = {
      day = 5000;
      night = 4000;
    };
  };
}
