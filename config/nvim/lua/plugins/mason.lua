return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "lua-language-server",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
    },
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })

      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config")] = true,
              },
            },
            format = {
              enable = false,
            },
          },
        },
      })

      require("lspconfig").rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            diagnostic = {
              refreshSupport = false,
            },
          },
        },
      })
    end,
  },
}
