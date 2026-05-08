return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPost",
  config = function()
    require("nvim-treesitter").setup({
      highlight = {
        enable = true,
      },
    })
  end,
}
