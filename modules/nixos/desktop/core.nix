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

    extraConfig.pipewire."low-latency" = {
      "context.properties" = {
        "default.clock.rate" = 48000;
        "default.clock.quantum" = 128;
        "default.clock.min-quantum" = 32;
        "default.clock.max-quantum" = 256;
      };
    };
  };

  # Desktop
  services.flatpak.enable = true;
  services.dbus.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.polkit.enable = true;
  security.pam.services.hyprlock = { };
  security.pam.services.login.enableGnomeKeyring = true;
  security.pam.services.greetd.enableGnomeKeyring = true;
}
