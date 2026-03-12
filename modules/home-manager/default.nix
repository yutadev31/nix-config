{
  lib,
  desktop,
  dev,
  games,
  ...
}:
{
  imports = [
    ./common
  ]
  ++ lib.optional desktop ./desktop
  ++ lib.optional dev ./dev.nix
  ++ lib.optional games ./games.nix;
}
