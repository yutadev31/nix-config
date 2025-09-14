{ pkgs, ... }: {
  programs.eza = {
    enable = true;
    enableFishIntegration = false;
    extraOptions = [ "--icons" ];
  };
}
