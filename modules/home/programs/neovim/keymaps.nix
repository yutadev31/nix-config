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
  ];
}
