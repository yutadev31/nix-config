{ pkgs, ... }:
{
  imports = [
    ./fcitx5
    ./hyprland
    ./hyprlock
    ./keyring.nix
    # ./niri
    ./rofi
    # ./sway
    # ./swayidle
    # ./swaylock
    # ./swaync
    ./theme.nix
    ./waybar
  ];

  home.packages = with pkgs; [
    xdg-user-dirs
    xdg-utils
    dconf
    wl-clipboard # includes wl-copy & wl-paste
    grim
    slurp
    playerctl
    pavucontrol
    brightnessctl
    hyprpicker
    libnotify # includes notify-send
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
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

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = "nemo.desktop";
      "text/html" = "zen.desktop";
      "x-scheme-handler/http" = "zen.desktop";
      "x-scheme-handler/https" = "zen.desktop";
    };
  };
}
