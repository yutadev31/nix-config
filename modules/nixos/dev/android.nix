{ pkgs, ... }:
{
  users.users.yuta.extraGroups = [ "adbusers" ];
  environment.systemPackages = with pkgs; [
    android-tools
  ];

  nixpkgs.config.allowUnfree = true;
}
