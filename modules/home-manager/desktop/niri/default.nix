{ config, hostName, ... }:
let
  colors = import ../../colors.nix;
  template = builtins.readFile ./config.kdl.in;
  configText =
    builtins.replaceStrings [ "@fg@" "@red@" "@black@" ] [ colors.fg colors.red colors.black ]
      template;
in
{
  xdg.configFile = {
    "niri/config.kdl".text = configText;
    "niri/outputs.kdl".source = ./. + "/outputs-${hostName}.kdl";
  };
}
