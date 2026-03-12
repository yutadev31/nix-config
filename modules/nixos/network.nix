{ lib, ... }:
{
  networking.networkmanager.dns = "none";
  networking.useDHCP = false;
  networking.dhcpcd.enable = false;
  networking.defaultGateway = "192.168.11.1";
  networking.interfaces.enp1s0.ipv4.addresses = lib.mkDefault [
    {
      address = "192.168.11.100";
      prefixLength = 24;
    }
  ];
}
