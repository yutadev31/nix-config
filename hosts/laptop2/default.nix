{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
    ../../modules/nixos/dev/android.nix
    ../../modules/nixos/desktop/core.nix
    ../../modules/nixos/desktop/bluetooth.nix
    ../../modules/nixos/desktop/firefox.nix
    ../../modules/nixos/desktop/fonts.nix
    ../../modules/nixos/desktop/greetd.nix
    ../../modules/nixos/desktop/niri.nix
    ../../modules/nixos/dev/docker.nix
  ];

  # Network
  networking.hostName = "laptop2";
  networking.interfaces.enp1s0.ipv4.addresses = [
    {
      address = "192.168.11.100";
      prefixLength = 24;
    }
  ];
}
