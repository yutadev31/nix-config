{ pkgs, ... }:
let
  lock = "${pkgs.hyprlock}/bin/hyprlock";
  display = status: ''
    case "$XDG_CURRENT_DESKTOP" in
      Hyprland)
        ${pkgs.hyprland}/bin/hyprctl dispatch dpms ${status}
        ;;
      *)
        ${pkgs.sway}/bin/swaymsg 'output * power ${status}'
        ;;
    esac
  '';
in
{
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 120;
        command = lock;
      }
      {
        timeout = 180;
        command = display "off";
        resumeCommand = display "on";
      }
      {
        timeout = 6000;
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];
    events = {
      before-sleep = (display "off") + "; " + lock;
      after-resume = display "on";
      lock = (display "off") + "; " + lock;
      unlock = display "on";
    };
  };
}
