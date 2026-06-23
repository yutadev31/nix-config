{
  networking.hostName = "laptop3";
  networking.interfaces.enp1s0.ipv4.addresses = [
    {
      address = "192.168.11.50";
      prefixLength = 24;
    }
  ];
}
