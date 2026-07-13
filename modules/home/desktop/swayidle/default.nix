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
    events = {
      before-sleep = (display "off") + "; " + lock;
      after-resume = display "on";
      lock = (display "off") + "; " + lock;
      unlock = display "on";
    };
  };
}
