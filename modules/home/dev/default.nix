{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nixfmt
    typos
    typos-lsp
  ];
}
