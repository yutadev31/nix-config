{ pkgs, ... }:
let
  colors = import ../../colors.nix;
  template = builtins.readFile ./theme.rasi.in;
  theme =
    builtins.replaceStrings
      [
        "@bg@"
        "@fg@"
        "@selection@"
        "@blue@"
        "@red@"
        "@black@"
        "@white@"
      ]
      [
        colors.bg
        colors.fg
        colors.selection
        colors.blue
        colors.red
        colors.black
        colors.white
      ]
      template;

  rofiPowermenu = pkgs.writeShellScriptBin "rofi-powermenu" ''
    #!/usr/bin/env sh
    set -eu

    if [ "$#" -eq 0 ]; then
      printf "%s\n" "  Lock" "󰗽  Logout" "󰤄  Suspend" "  Reboot" "  Poweroff"
      exit 0
    fi

    case "$1" in
      *Lock)
        hyprlock
        ;;
      *Logout)
        niri msg exit
        ;;
      *Suspend)
        systemctl suspend
        ;;
      *Reboot)
        systemctl reboot
        ;;
      *Poweroff)
        systemctl poweroff
        ;;
    esac
  '';
in
{
  xdg.dataFile."rofi/themes/custom.rasi".text = theme;

  programs.rofi = {
    enable = true;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    theme = "custom";
    extraConfig = {
      modi = "drun,powermenu:rofi-powermenu";
    };
  };

  home.packages = [ rofiPowermenu ];
}
