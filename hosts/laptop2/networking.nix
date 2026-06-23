{
  networking.hostName = "laptop2";
  networking.interfaces.enp1s0.ipv4.addresses = [
    {
      address = "192.168.11.100";
      prefixLength = 24;
    }
  ];
}
