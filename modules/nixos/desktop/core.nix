{ pkgs, ... }:
{
  # Graphics
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [ mesa ];
  };

  # Audio
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    jack.enable = true;
    pulse.enable = true;
  };

  # Desktop
  services.flatpak.enable = true;
  services.dbus.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.polkit.enable = true;
  security.pam.services.login.enableGnomeKeyring = true;
  security.pam.services.greetd.enableGnomeKeyring = true;
}
