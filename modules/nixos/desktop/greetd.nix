{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "niri-session";
        user = "yuta";
      };
    };
  };
}
