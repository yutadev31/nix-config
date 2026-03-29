{
  programs.waybar = {
    enable = true;
    settings.main = {
      reload_style_on_change = true;
      layer = "top";
      position = "top";
      spacing = 8;
      modules-left = [ "niri/workspaces" ];
      modules-center = [ "niri/window" ];
      modules-right = [
        "tray"
        "battery"
        "pulseaudio"
        "clock"
        "cpu"
        "memory"
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
        format-source = "{volume}%  ";
        format-source-muted = " ";
        format-icons = {
          headphone = " ";
          hands-free = " ";
          headset = " ";
          phone = " ";
          portable = " ";
          car = " ";
          default = [
            " "
            " "
            " "
          ];
        };
      };
      clock = {
        format = "{:%H:%M}  ";
        format-alt = "{:%A, %B %d, %Y (%R)}";
      };
      cpu = {
        interval = 10;
        format = "{}%  ";
        max-length = 10;
      };
      memory = {
        interval = 30;
        format = "{}%  ";
        max-length = 10;
      };
    };
    style = builtins.readFile ./style.css;
  };
}
