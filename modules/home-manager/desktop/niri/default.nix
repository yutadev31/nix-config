{ hostName, ... }:
{
  xdg.configFile = {
    "niri/config.kdl".source = ./config.kdl;
    "niri/outputs.kdl".source = ./. + "/outputs-${hostName}.kdl";
  };
}
