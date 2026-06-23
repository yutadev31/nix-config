{
  programs.nixvim.extraConfigLua = ''
    vim.lsp.inlay_hint.enable(true)
    vim.diagnostic.config({
      virtual_text = true,
      severity_sort = true,
    })

    vim.lsp.config("cspell_ls", {
      filetypes = {
        "css",
        "gitcommit",
        "go",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "lua",
        "markdown",
        "nix",
        "rust",
        "text",
        "toml",
        "typescript",
        "typescriptreact",
        "yaml",
      },
    })

    vim.lsp.enable("biome")

    if vim.fn.executable("cspell-lsp") == 1 then
      vim.lsp.enable("cspell_ls")
    end

    if vim.fn.executable("cspell") == 1 then
      vim.api.nvim_create_user_command("Cspell", function()
        local file = vim.api.nvim_buf_get_name(0)
        if file == "" then
          vim.notify("Cspell: current buffer has no file name", vim.log.levels.WARN)
          return
        end

        local result = vim.system({
          "cspell",
          "lint",
          "--no-progress",
          "--no-summary",
          file,
        }, { text = true }):wait()

        local lines = vim.split(result.stdout or "", "\n", { trimempty = true })
        vim.fn.setqflist({}, "r", {
          title = "cspell",
          lines = lines,
          efm = "%f:%l:%c - %m",
        })

        if #lines == 0 then
          vim.notify("Cspell: no issues found", vim.log.levels.INFO)
          return
        end

        vim.cmd.copen()
      end, {})
    end
  '';
}
