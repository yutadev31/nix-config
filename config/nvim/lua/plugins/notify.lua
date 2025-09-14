return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function()
    require("notify").setup({
      background_colour = "#000000",
      render = "compact",
      stages = "fade",
      max_width = 60,
    })
    vim.notify = require("notify")
  end,
}
