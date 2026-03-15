{ inputs, pkgs, ... }:
{
  home.file.".config/VSCodium/User/settings.json".source = ./settings.json;
  home.packages = with pkgs; [
    (vscode-with-extensions.override {
      vscode = vscodium;
      vscodeExtensions = with vscode-extensions; [
        github.github-vscode-theme
        pkief.material-icon-theme

        ms-vscode-remote.remote-ssh
        leonardssh.vscord

        yzhang.markdown-all-in-one
        davidanson.vscode-markdownlint
        github.vscode-github-actions
        ms-azuretools.vscode-docker

        svelte.svelte-vscode
        dbaeumer.vscode-eslint
        esbenp.prettier-vscode
        biomejs.biome
        ms-python.python
        ms-python.black-formatter
        rust-lang.rust-analyzer
        bbenoist.nix
        redhat.vscode-yaml
        tamasfe.even-better-toml
        tauri-apps.tauri-vscode
        bradlc.vscode-tailwindcss
        dart-code.dart-code
        dart-code.flutter
        redhat.java
        llvm-vs-code-extensions.vscode-clangd
        mesonbuild.mesonbuild
        mechatroner.rainbow-csv
        astro-build.astro-vscode
        haskell.haskell
        justusadam.language-haskell
        dbaeumer.vscode-eslint
        ms-vscode.cmake-tools

        Google.gemini-cli-vscode-ide-companion

        inputs.ink-and-frost-vscode.packages."x86_64-linux".vscode-theme
      ];
    })
  ];
}
