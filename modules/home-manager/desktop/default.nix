{ pkgs, ... }:
{
  imports = [
    ./fcitx5
    ./keyring.nix
    ./niri
    ./rofi
    ./swaync
    ./theme.nix
    ./waybar
    ./apps
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpaper.nix
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
  ];
}
