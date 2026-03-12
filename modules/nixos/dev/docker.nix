{ pkgs, ... }:
{
  virtualisation.docker = {
    enable = true;
    extraPackages = [ pkgs.docker-compose ];
  };

  users.users.yuta.extraGroups = [ "docker" ];
}
