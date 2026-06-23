{
  imports = [
    ./cli.nix
    ./fish.nix
    ../programs/neovim
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "yuta";
  home.homeDirectory = "/home/yuta";

  home.stateVersion = "25.05";
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  targets.genericLinux.enable = true;

  programs.home-manager.enable = true;
}
