{ config, pkgs, ... }: {
  imports = [
    home-manager/alacritty.nix
    home-manager/eza.nix
    home-manager/fastfetch.nix
    home-manager/fcitx5.nix
    home-manager/firefox.nix
    home-manager/fish.nix
    home-manager/rofi.nix
    home-manager/tmux.nix
  ];
  home.username = "yuta";
  home.homeDirectory = "/home/yuta";

  home.stateVersion = "25.05";

  home.sessionVariables = {
    # EDITOR = "nvim";
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    GTK_THEME = "Catppuccin-Dark-Macchiato";
  };

  programs.home-manager.enable = true;
}
