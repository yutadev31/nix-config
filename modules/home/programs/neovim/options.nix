{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = "\\";
    };
    opts = {
      encoding = "utf-8";
      termguicolors = true;
      completeopt = "menu,menuone,noselect";
      timeout = true;
      timeoutlen = 1000;

      number = true;
      relativenumber = true;
      cursorline = true;
      scrolloff = 5;
      laststatus = 3;
      winblend = 0;
      pumblend = 0;
      wrap = true;
      linebreak = true;
      whichwrap = "<,>,h,l";
      fillchars = {
        eob = "~";
      };

      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
      autoindent = true;
      smartindent = true;

      ignorecase = true;
      smartcase = true;
      hlsearch = true;

      clipboard = "unnamedplus";

      list = true;
      listchars = {
        tab = "> ";
        trail = "-";
        nbsp = "+";
      };

      backspace = "indent,eol,start";

      shortmess = "c";
      updatetime = 300;

      swapfile = false;

      autoread = true;

      splitright = true;
      splitbelow = true;
      showmode = false;
      cmdheight = 0;

      foldmethod = "expr";
      foldexpr = "nvim_treesitter#foldexpr()";
      foldlevel = 99;
      foldenable = true;

      shell = "fish";
    };

    extraConfigLua = ''
      vim.api.nvim_create_autocmd("InsertLeave", {
        callback = function()
          vim.fn.jobstart({ "fcitx5-remote", "-c" }, { detach = true })
        end,
      })
    '';
  };
}
