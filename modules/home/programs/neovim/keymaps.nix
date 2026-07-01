let
  normal = key: action: desc: {
    mode = "n";
    inherit key action;
    options.desc = desc;
  };
  terminal = key: action: {
    mode = "t";
    inherit key action;
  };
in
{
  programs.nixvim.keymaps = [
    (normal "<leader>ee" "<cmd>Oil<cr>" "Open file explorer")
    (normal "<leader>tt" "<cmd>ToggleTerm<cr>" "Open terminal")
    (terminal "<ESC>" "<C-\\><C-n>")

    (normal "K" "<cmd>lua vim.lsp.buf.hover()<CR>" "LSP Hover")
    (normal "gd" "<cmd>lua vim.lsp.buf.definition()<CR>" "")
    (normal "gD" "<cmd>lua vim.lsp.buf.declaration()<CR>" "")
    (normal "gi" "<cmd>lua vim.lsp.buf.implementation()<CR>" "")
    (normal "gr" "<cmd>lua vim.lsp.buf.references()<CR>" "")
    (normal "go" "<cmd>lua vim.lsp.buf.type_definition()<CR>" "")
    (normal "<leader>rn" "<cmd>lua vim.lsp.buf.rename()<CR>" "LSP Rename")
    (normal "<leader>ca" "<cmd>lua vim.lsp.buf.code_action()<CR>" "LSP Code Action")

    (normal "<leader>ff" "<cmd>Telescope find_files<CR>" "Find files")
    (normal "<leader>fg" "<cmd>Telescope live_grep<CR>" "Live grep")
    (normal "<leader>fb" "<cmd>Telescope buffers<CR>" "Find buffers")
    (normal "<leader>fs" "<cmd>Telescope treesitter<CR>" "Find symbols")
    (normal "<leader>glg" "<cmd>Telescope git_commits<CR>" "Find Git commits")
    (normal "<leader>glb" "<cmd>Telescope git_bcommits<CR>" "Find Git commits")

    (normal "<leader>gg" "<cmd>Neogit<CR>" "Open Neogit")

    (normal "<leader>xx" "<cmd>Trouble diagnostics toggle<CR>" "Diagnostics")
    (normal "<leader>xq" "<cmd>Trouble qflist toggle<CR>" "Quickfix")
    (normal "<leader>xl" "<cmd>Trouble loclist toggle<CR>" "Location List")
    (normal "<leader>xt" "<cmd>Trouble todo toggle<CR>" "Todo")

    (normal "<leader>a" "<cmd>AerialToggle!<CR>" "Toggle Aerial")
    (normal "{" "<cmd>AerialPrev<CR>" "")
    (normal "}" "<cmd>AerialNext<CR>" "")
  ];
}
