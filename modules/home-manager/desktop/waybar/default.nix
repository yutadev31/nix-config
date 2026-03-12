let
  colors = import ../../colors.nix;
  template = builtins.readFile ./style.css.in;
  style =
    builtins.replaceStrings
      [ "@bg@" "@fg@" "@selection@" "@blue@" ]
      [ colors.bg colors.fg colors.selection colors.blue ]
      template;
in
{
  programs.waybar = {
    enable = true;
    settings.main = {
      reload_style_on_change = true;
      layer = "top";
      position = "top";
      spacing = 0;
      modules-left = [ "niri/workspaces" ];
      modules-center = [ "niri/window" ];
      modules-right = [
        "tray"
        "battery"
        "pulseaudio"
        "clock"
      ];
      "niri/workspaces" = {
        all-outputs = true;
      };
      tray = {
        spacing = 4;
      };
      battery = {
        states = {
          "good" = 95;
          "warning" = 30;
          "critical" = 15;
        };
        format = "{capacity}% {icon} ";
        format-full = "{capacity}% {icon} ";
        format-charging = "{capacity}%  ";
        format-plugged = "{capacity}%  ";
        format-alt = "{time} {icon} ";
        format-icons = [
          ""
          ""
          ""
          ""
          ""
        ];
      };
      pulseaudio = {
        on-click = "pavucontrol";
        format = "{volume}% {icon} {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        format-icons = {
          headphone = "";
          hands-free = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = [
            ""
            ""
            ""
          ];
        };
      };
      clock = {
        format = "{:%H:%M}  ";
        format-alt = "{:%A, %B %d, %Y (%R)}";
      };
    };
    inherit style;
  };
}
