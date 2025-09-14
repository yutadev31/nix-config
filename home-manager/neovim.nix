{ pkgs, ... }: {
  home.file.".config/nvim".source =
    "${builtins.toString config.home.homeDirectory}/config/nvim";
}
