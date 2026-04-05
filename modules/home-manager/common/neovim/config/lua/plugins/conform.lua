local js_formatters = { "biome" }

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
      nix = { "nixfmt" },
      sh = { "shfmt" },
      lua = { "stylua" },
      python = { "isort", "black" },
      rust = { "rust_analyzer" },
      markdown = { "markdownlint" },
      toml = { "taplo" },
      haskell = { "ormolu" },
      javascript = js_formatters,
      javascriptreact = js_formatters,
      typescript = js_formatters,
      typescriptreact = js_formatters,
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = true,
      quiet = false,
    },
  },
}
