{ pkgs, ... }: {
  home.packages = with pkgs; [ alacritty ];
  home.file.".config/alacritty/alacritty.toml".source = "${
      builtins.toString config.home.homeDirectory
    }/config/alacritty/alacritty.toml";
}
