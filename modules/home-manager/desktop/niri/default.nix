{ config, hostName, ... }:
let
  colors = import ../../colors.nix;
  template = builtins.readFile ./config.kdl.in;
  configText =
    builtins.replaceStrings [ "@blue@" "@red@" "@black@" ] [ colors.blue colors.red colors.black ]
      template;
in
{
  home = {
    file = {
      "${config.xdg.configHome}/niri/config.kdl".text = configText;
      "${config.xdg.configHome}/niri/outputs.kdl".source = ./. + "/outputs-${hostName}.kdl";
    };
  };
}
