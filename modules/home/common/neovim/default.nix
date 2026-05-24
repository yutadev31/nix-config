{
  imports = [
    ./options.nix
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    plugins.mini-pairs.enable = true;
    plugins.mini-cursorword.enable = true;
    plugins.mini-indentscope.enable = true;
    plugins.mini-trailspace.enable = true;
    plugins.cmp = {
      settings = {
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
        };
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };
    };
    colorschemes.tokyonight = {
      enable = true;
      settings = {
        style = "storm";
        transparent = true;
      };
    };

    extraConfigLua = ''
      vim.lsp.inlay_hint.enable(true)
      vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
      })
    '';
  };
}
