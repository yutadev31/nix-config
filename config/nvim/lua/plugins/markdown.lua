return {
  {
    "ixru/nvim-markdown",
  },
  {

    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = {
      completions = {
        lsp = { enabled = true },
      },
      heading = {
        position = "inline",
        border = true,
        icons = { "󰼏 ", "󰼐 ", "󰼑 ", "󰼒 ", "󰼓 ", "󰼔 " },
      },
    },
  },
}
