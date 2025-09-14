return {
  "kazhala/close-buffers.nvim",
  config = function()
    require("close_buffers").setup({})
  end,
  keys = {
    {
      "<leader>tc",
      function()
        require("close_buffers").delete({ type = "this", force = true })
      end,
    },
    {
      "<leader>ta",
      function()
        require("close_buffers").delete({ type = "all", force = true })
      end,
    },
  },
}
