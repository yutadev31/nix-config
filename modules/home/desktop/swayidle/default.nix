{ pkgs, ... }:
let
  lock = "${pkgs.swaylock}/bin/swaylock --daemonize";
  display = status: "${pkgs.sway}/bin/swaymsg 'output * power ${status}'";
in
{
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 30;
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
    events = [
      {
        event = "before-sleep";
        command = (display "off") + "; " + lock;
      }
      {
        event = "after-resume";
        command = display "on";
      }
      {
        event = "lock";
        command = (display "off") + "; " + lock;
      }
      {
        event = "unlock";
        command = display "on";
      }
    ];
  };
}
