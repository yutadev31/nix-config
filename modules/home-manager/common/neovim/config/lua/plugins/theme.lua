-- return {
--   "yutadev31/ink-and-frost.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme("ink-and-frost")
--   end,
-- }

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd.colorscheme("tokyonight")
  end,
}
