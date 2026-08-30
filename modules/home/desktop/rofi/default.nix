{ pkgs, ... }:
{
  xdg.dataFile."rofi/themes/custom.rasi".source = ./theme.rasi;

  programs.rofi = {
    enable = true;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    theme = "custom";
  };
}
