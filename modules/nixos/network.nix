{ lib, ... }:
{
  # Network
  networking.networkmanager.enable = true;
  networking.defaultGateway = "192.168.11.1";
  networking.interfaces.enp1s0.ipv4.addresses = lib.mkDefault [
    {
      address = "192.168.11.100";
      prefixLength = 24;
    }
  ];

  # DHCP
  networking.useDHCP = false;
  networking.dhcpcd.enable = false;

  # DNS
  networking.networkmanager.dns = "none";
  networking.resolvconf.enable = false;
  networking.nameservers = [
    "1.1.1.2"
    "1.0.0.2"
  ];
  services.resolved.enable = false;

  # Firewall
  networking.firewall.allowedTCPPorts = [
    22
  ];
}
