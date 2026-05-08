{ pkgs, ... }:
{
  users.users.yuta.extraGroups = [ "adbusers" ];
  environment.systemPackages = with pkgs; [
    android-studio
    android-tools
  ];

  nixpkgs.config.allowUnfree = true;
}
