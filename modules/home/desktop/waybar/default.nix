{ pkgs, ... }:
let
  waybar-git = pkgs.waybar.overrideAttrs (old: {
    version = "0.15.0";
    src = pkgs.fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "aacf0cbc995d9341b71ad8324969427b3967cca1";
      hash = "sha256-sBBQAR0SF9vjJWiEHBsHV33RlAO5GYiFpTcTZXapqqA=";
    };
  });
in
{
  programs.waybar = {
    package = waybar-git;
    enable = true;
    settings.main = {
      reload_style_on_change = true;
      layer = "top";
      position = "top";
      spacing = 8;
      modules-left = [
        "hyprland/workspaces"
        "sway/workspaces"
        "niri/workspaces"
      ];
      modules-center = [
        "hyprland/window"
        "sway/window"
        "niri/window"
      ];
      modules-right = [
        "tray"
        "memory"
        "battery"
        "pulseaudio"
        "clock"
      ];
      "sway/workspaces" = {
        all-outputs = true;
      };
      "hyprland/workspaces" = {
        all-outputs = true;
      };
      "niri/workspaces" = {
        all-outputs = true;
      };
      tray = {
        spacing = 4;
      };
      memory = {
        format = "{}%  ";
        interval = 5;
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
    };
    style = builtins.readFile ./style.css;
  };
}
