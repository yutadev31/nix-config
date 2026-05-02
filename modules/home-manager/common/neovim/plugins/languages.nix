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
    plugins.conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          nix = [ "nixfmt" ];
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
        nil_ls = {
          enable = true;
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
          settings = {
            "rust-analyzer" = {
              diagnostic = {
                refreshSupport = false;
              };
            };
          };
        };
      };
    };
  };
}
