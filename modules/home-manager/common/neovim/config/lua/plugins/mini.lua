local function setup(name, opts)
  require("mini." .. name).setup(opts)
end

return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    setup("pairs", {})
    setup("icons", {})
    setup("surround", {})
    setup("cursorword", {})
    setup("indentscope", {})
    setup("trailspace", {})
    setup("misc", {})
    setup("sessions", {})

    MiniMisc.setup_restore_cursor()
  end,
}
