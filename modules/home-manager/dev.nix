{ pkgs, ... }:
{
  programs.mise.enable = true;

  home.packages = with pkgs; [
    # Nix
    nil
    nixfmt

    # # Docker
    # docker-language-server

    # # JSON
    vscode-json-languageserver

    # # TOML
    taplo

    # # YAML
    yaml-language-server

    # # Lua
    stylua

    # # C/C++
    # gcc
    # clang-tools
    # mesonlsp

    # # Java Script
    nodejs
    pnpm
    bun
    typescript-language-server
    tailwindcss-language-server
    astro-language-server
    vscode-css-languageserver

    # # Python
    python3
    # uv
    pyright
    black

    # # Rust
    (rust-bin.stable.latest.default.override {
      extensions = [ "rust-src" ];
    })

    # # Go
    # go

    # # Dart (Flutter)
    # flutter

    # # Haskell
    # haskellPackages.stack
    # haskellPackages.ghc
    # haskellPackages.haskell-language-server
    # haskellPackages.hlint
    # haskellPackages.ormolu
  ];
}
