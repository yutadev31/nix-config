{
  programs.nixvim = {
    plugins.lualine.enable = true;
    plugins.bufferline.enable = true;
    plugins.neo-tree = {
      enable = true;
      settings = {
        filesystem = {
          filtered_items = {
            visible = true;
            hide_dotfiles = false;
            hide_gitignored = false;
            hide_ignored = false;
            hide_hidden = false;
          };
        };
      };
    };
    plugins.telescope.enable = true;
    plugins.toggleterm = {
      enable = true;
      settings = {
        direction = "float";
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
        key = "<leader>e";
        action = "<cmd>Neotree<cr>";
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
