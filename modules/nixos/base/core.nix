{ pkgs, ... }:
{
  # Boot Loader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_6_18;

  # Time Zone
  time.timeZone = "Asia/Tokyo";

  # Default Locale
  i18n.defaultLocale = "en_US.UTF-8";

  # Console Keymap
  console.keyMap = "jp106";

  # Nix ld
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    glib
    nspr
    nss
    at-spi2-atk
    dbus
    cups
    expat
    libxcb
    libxkbcommon
    alsa-lib
    mesa
    libx11
    libxext
    cairo
    pango
    systemd
    libxcomposite
    libxdamage
    libxfixes
    libxrandr
    at-spi2-core
    gdk-pixbuf
    gtk3
    libgbm
  ];

  # Sudo
  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };

  # RTKit
  security.rtkit.enable = true;

  # GnuPG
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # Power
  powerManagement.cpuFreqGovernor = "performance";

  # User
  users.users.yuta = {
    isNormalUser = true;
    description = "Yuta";
    extraGroups = [
      "wheel"
      "kvm"
      "input"
      "uinput"
    ];
  };

  # System
  system.stateVersion = "25.05";
}
