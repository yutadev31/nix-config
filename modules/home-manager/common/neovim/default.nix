{ pkgs, ... }:
{
  home.packages = [ pkgs.neovim ];
  home.file.".config/nvim/lsp".source = ./config/lsp;
  home.file.".config/nvim/lua".source = ./config/lua;
  home.file.".config/nvim/init.lua".source = ./config/init.lua;
}
