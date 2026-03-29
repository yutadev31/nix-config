{ pkgs, ... }:
{
  home.packages = [ pkgs.neovim ];

  xdg.configFile = {
    "nvim/lsp".source = ./config/lsp;
    "nvim/lua".source = ./config/lua;
    "nvim/init.lua".source = ./config/init.lua;
  };
}
