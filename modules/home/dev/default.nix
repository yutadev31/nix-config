{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nixfmt
    typos
    typos-lsp
    inputs.herdr.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
