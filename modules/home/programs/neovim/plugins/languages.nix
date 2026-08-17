{ pkgs, ... }:
{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
      settings = {
        highlight = {
          enable = true;
        };
      };
    };
    plugins.ts-autotag = {
      enable = true;
    };
    plugins.conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          html = [
            "biome-check"
            "oxfmt"
          ];
          css = [
            "biome-check"
            "oxfmt"
          ];
          json = [
            "biome-check"
            "oxfmt"
          ];
          javascript = [
            "biome-check"
            "oxfmt"
          ];
          javascriptreact = [
            "biome-check"
            "oxfmt"
          ];
          typescript = [
            "biome-check"
            "oxfmt"
          ];
          typescriptreact = [
            "biome-check"
            "oxfmt"
          ];
          nix = [ "nixfmt" ];
          go = [ "gofmt" ];
          asm = [ "asmfmt" ];
          make = [ "bake" ];
          python = [ "black" ];
        };
        format_on_save = {
          timeout_ms = 2000;
          lsp_fallback = true;
          quiet = false;
        };
      };
    };
    plugins.lsp = {
      enable = true;
      servers = {
        nixd = {
          enable = true;
          settings = {
            nixd = {
              nixpkgs = {
                expr = "import <nixpkgs> { }";
              };
              options = {
                nixos = {
                  expr = "(builtins.getFlake (toString ./.)).nixosConfigurations.<hostname>.options";
                };
                home_manager = {
                  expr = "(builtins.getFlake (toString ./.)).homeConfigurations.\"<username>@<hostname>\".options";
                };
              };
            };
          };
        };
        pyright = {
          enable = true;
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true;
                useLibraryCodeForTypes = true;
                diagnosticMode = "openFilesOnly";
              };
            };
          };
        };
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
          settings = {
            "rust-analyzer" = {
              diagnostic = {
                refreshSupport = false;
              };
            };
          };
        };
        html = {
          enable = true;
        };
        cssls = {
          enable = true;
        };
        ts_ls = {
          enable = true;
        };
        tailwindcss = {
          enable = true;
        };
        taplo = {
          enable = true;
        };
        jsonls = {
          enable = true;
        };
        yamlls = {
          enable = true;
        };
        gopls = {
          enable = true;
        };
        clangd = {
          enable = true;
        };
        cmake = {
          enable = true;
        };
        zls = {
          enable = true;
        };
        typos_lsp = {
          enable = true;
        };
      };
    };
  };
}
