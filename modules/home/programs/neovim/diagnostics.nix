{
  programs.nixvim.extraConfigLua = ''
    vim.lsp.inlay_hint.enable(true)
    vim.diagnostic.config({
      virtual_text = true,
      severity_sort = true,
    })

    vim.lsp.enable("biome")
  '';
}
