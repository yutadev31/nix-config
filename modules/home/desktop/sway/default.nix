{
  xdg.configFile = {
    "sway/config".source = ./config;
  };

  systemd.user.targets.sway-session = {
    Unit = {
      Description = "Sway compositor session";
      Documentation = [ "man:systemd.special" ];

      BindsTo = [ "graphical-session.target" ];
      Wants = [ "graphical-session-pre.target" ];
      After = [ "graphical-session-pre.target" ];
    };
  };
}
