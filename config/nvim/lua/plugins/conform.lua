local js_formatters = { "biome", "prettierd", "prettier" }

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt" },
      lua = { "stylua" },
      python = { "isort", "black" },
      rust = { "rustfmt" },
      markdown = { "markdownlint" },
      json = js_formatters,
      javascript = js_formatters,
      javascriptreact = js_formatters,
      typescript = js_formatters,
      typescriptreact = js_formatters,
      nix = { "nixfmt" },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = true,
      quiet = false,
    },
  },
}
