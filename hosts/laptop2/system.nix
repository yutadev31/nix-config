{ pkgs, ... }:
{
  boot.kernelParams = [
    "amd_pstate=active"
  ];
  boot.tmp.useTmpfs = true;

  environment.systemPackages = with pkgs; [
    piper
    libratbag
  ];
  services.ratbagd.enable = true;

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16 * 1024; # 16 GiB
    }
  ];
}
