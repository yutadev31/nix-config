{ pkgs, ... }:
{
  # Boot Loader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Time Zone
  time.timeZone = "Asia/Tokyo";

  # Default Locale
  i18n.defaultLocale = "en_US.UTF-8";

  # Console Keymap
  console.keyMap = "jp106";

  # Nix ld
  programs.nix-ld.enable = true;

  # Sudo
  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };

  # GnuPG
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

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
