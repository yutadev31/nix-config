local M = {}

M.map = function(mode, lhs, rhs, desc, opt)
  vim.keymap.set(mode, lhs, rhs, opt or { noremap = true, silent = true, desc = desc })
end

for _, mode in pairs({ "n", "v", "i", "s", "o", "c", "t", "x" }) do
  M[mode .. "map"] = function(lhs, rhs, desc, opt)
    M.map(mode, lhs, rhs, desc, opt)
  end
end

return M
