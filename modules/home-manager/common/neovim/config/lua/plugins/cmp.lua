return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "f3fora/cmp-spell",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",

    "onsails/lspkind.nvim",
  },
  event = "InsertEnter",
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = {
            menu = 50,
            abbr = 50,
          },
          ellipsis_char = "...",
          show_labelDetails = true,
          before = function(_, vim_item)
            return vim_item
          end,
        }),
      },
      sources = cmp.config.sources({
        { name = "lazydev" },
        { name = "nvim_lsp" },
        { name = "spell" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
