local h = require("yutadev31.utils.helper")

-- Terminal
h.tmap("<ESC>", "<C-\\><C-n>")

-- LSP
h.nmap("gd", "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to Definition")
h.nmap("gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to Declaration")
h.nmap("gr", "<cmd>lua vim.lsp.buf.references()<cr>", "Find References")
h.nmap("gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", "Go to Implementation")
h.nmap("K", "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover Info")
h.nmap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename Symbol")
h.nmap("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action")
h.nmap("<leader>k", "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help")

-- Package Managers
h.nmap("<leader>pl", "<cmd>Lazy<cr>", "Lazy")
h.nmap("<leader>pm", "<cmd>Mason<cr>", "Mason")
