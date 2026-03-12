let
  colors = import ../../colors.nix;
  template = builtins.readFile ./style.css.in;
  style =
    builtins.replaceStrings
      [
        "@bg@"
        "@fg@"
        "@selection@"
        "@blue@"
        "@red@"
        "@cyan@"
        "@black@"
        "@white@"
      ]
      [
        colors.bg
        colors.fg
        colors.selection
        colors.blue
        colors.red
        colors.cyan
        colors.black
        colors.white
      ]
      template;
in
{
  services.swaync = {
    enable = true;
    settings = {
      control-center-margin-top = 4;
      control-center-margin-bottom = 4;
      control-center-margin-right = 4;
      control-center-margin-left = 0;
    };
    inherit style;
  };
}
