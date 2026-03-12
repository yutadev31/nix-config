{ pkgs, ... }:
{
  home.packages = with pkgs; [
    swayimg
  ];

  xdg.configFile."swayimg/init.lua".source = ./init.lua;
}
