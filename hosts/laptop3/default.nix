{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
    ../../modules/nixos/desktop/core.nix
    ../../modules/nixos/desktop/firefox.nix
    ../../modules/nixos/desktop/fonts.nix
    ../../modules/nixos/desktop/greetd.nix
    ../../modules/nixos/desktop/niri.nix
  ];

  # Network
  networking.hostName = "laptop3";
  networking.interfaces.enp1s0.ipv4.addresses = [
    {
      address = "192.168.11.50";
      prefixLength = 24;
    }
  ];
}
