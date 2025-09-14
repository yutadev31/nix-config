return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  config = function()
    local h = require("yutadev31.utils.helper")
    local telescope = require("telescope.builtin")

    h.nmap("<leader>ff", telescope.find_files, "Find Files")
    h.nmap("<leader>fg", telescope.live_grep, "Live Grep")
    h.nmap("<leader>fo", telescope.oldfiles, "Recent Files")
    h.nmap("<leader>fb", telescope.buffers, "Open Buffers")
    h.nmap("<leader>fc", telescope.commands, "Command Palette")
    h.nmap("<leader>fh", telescope.help_tags, "Help Tags")
    h.nmap("<leader>fd", telescope.diagnostics, "Diagnostics")
    h.nmap("<leader>fr", telescope.lsp_references, "LSP References")
    h.nmap("<leader>fs", telescope.lsp_document_symbols, "Document Symbols")
    h.nmap("<leader>fw", telescope.lsp_workspace_symbols, "Workspace Symbols")
    h.nmap("<leader>gc", telescope.git_commits, "Git Commits")
    h.nmap("<leader>gb", telescope.git_branches, "Git Branches")
    h.nmap("<leader>gs", telescope.git_status, "Git Status")
  end,
}
