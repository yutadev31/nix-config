{
  # SSH
  services.openssh = {
    enable = true;
    settings = {
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "yuta" ];
    };
  };
}
