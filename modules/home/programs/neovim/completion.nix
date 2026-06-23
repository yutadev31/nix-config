{
  programs.nixvim.plugins.blink-cmp = {
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
      completion.documentation.auto_show = true;
      sources.default = [
        "lsp"
        "path"
        "buffer"
      ];
    };
  };
}
