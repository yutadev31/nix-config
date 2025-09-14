return {
  "SmiteshP/nvim-navic",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  event = { "BufNewFile", "BufReadPre" },
  opts = {
    lsp = {
      auto_attach = true,
    },
    highlight = true,
    depth_limit = 9,
  },
}
