{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gcr
    polkit_gnome
  ];

  services.gnome-keyring.enable = true;

  systemd.user.services.polkit-gnome-agent = {
    Unit = {
      Description = "Polkit GNOME Authentication Agent";
      After = [ "niri.service" ];
      PartOf = [ "niri.service" ];
    };

    Service = {
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "niri.service" ];
    };
  };
}
