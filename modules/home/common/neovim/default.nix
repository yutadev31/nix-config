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
    plugins.mini-surround.enable = true;
    plugins.blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          "<C-n>" = [
            "select_next"
            "fallback"
          ];
          "<C-p>" = [
            "select_prev"
            "fallback"
          ];
          "<CR>" = [
            "accept"
            "fallback"
          ];
        };
        completion = {
          documentation.auto_show = true;
        };
        sources = {
          default = [
            "lsp"
            "path"
            "buffer"
          ];
        };
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

      vim.lsp.enable("biome")
    '';
  };
}
