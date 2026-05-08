{
  imports = [
    ./hardware-configuration.nix
    ../../modules
    ../../modules/desktop/core.nix
    ../../modules/desktop/bluetooth.nix
    ../../modules/desktop/firefox.nix
    ../../modules/desktop/fonts.nix
    ../../modules/desktop/greetd.nix
    ../../modules/desktop/niri.nix
    ../../modules/dev/docker.nix
    ../../modules/dev/ollama.nix
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
