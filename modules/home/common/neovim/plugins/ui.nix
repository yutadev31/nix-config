{
  programs.nixvim = {
    plugins.lualine.enable = true;
    plugins.bufferline.enable = true;
    plugins.oil = {
      enable = true;
    };
    plugins.telescope.enable = true;
    plugins.toggleterm = {
      enable = true;
      settings = {
        direction = "float";
        start_in_insert = true;
        persist_size = true;
      };
    };
    plugins.noice = {
      enable = true;
      settings = {
        cmdline = {
          enabled = true;
        };
        messages = {
          enabled = true;
        };
        popupmenu = {
          enabled = true;
        };
      };
    };
    plugins.notify = {
      enable = true;
      settings = {
        background_colour = "#000000";
        render = "compact";
        stages = "fade";
        max_width = 60;
      };
    };
    plugins.mini-icons = {
      enable = true;
      mockDevIcons = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>ee";
        action = "<cmd>Oil<cr>";
      }
      {
        mode = "n";
        key = "<leader>tt";
        action = "<cmd>ToggleTerm<cr>";
      }
      {
        mode = "t";
        key = "<ESC>";
        action = "<C-\\><C-n>";
      }
    ];
  };
}
