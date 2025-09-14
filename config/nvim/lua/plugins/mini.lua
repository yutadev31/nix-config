local function setup(name, opts)
  require("mini." .. name).setup(opts)
end

return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    setup("pairs", {})
  end,
}
