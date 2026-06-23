{
  programs.nixvim = {
    plugins.lualine.enable = true;
    plugins.bufferline.enable = true;
    plugins.oil = {
      enable = true;
      settings = {
        view_options = {
          show_hidden = true;
        };
      };
    };
    plugins.telescope = {
      enable = true;
      extensions = {
        fzf-native = {
          enable = true;
        };
      };
    };
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
    plugins.mini-notify = {
      enable = true;
      settings = {
        # background_colour = "#000000";
        # render = "compact";
        # stages = "fade";
        # max_width = 30;
      };
    };
    plugins.mini-icons = {
      enable = true;
      mockDevIcons = true;
    };
    plugins.neogit = {
      enable = true;
      settings = {
        disable_hint = false;
        disable_commit_confirmation = true;
        kind = "split";
        integrations = {
          diffview = true;
        };
        sections = {
          recent = {
            folded = false;
          };
          untracked = {
            folded = false;
          };
          unstaged = {
            folded = false;
          };
          staged = {
            folded = false;
          };
        };
      };
    };
    plugins.diffview.enable = true;

    plugins.which-key = {
      enable = true;
      settings = {
        preset = "modern";
        spec = [
          {
            __unkeyed-1 = "<leader>f";
            group = "find";
          }
          {
            __unkeyed-1 = "<leader>g";
            group = "git";
          }
          {
            __unkeyed-1 = "<leader>x";
            group = "trouble";
          }
        ];
      };
    };

    plugins.trouble = {
      enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>ee";
        action = "<cmd>Oil<cr>";
        options.desc = "Open file explorer";
      }
      {
        mode = "n";
        key = "<leader>tt";
        action = "<cmd>ToggleTerm<cr>";
        options.desc = "Open terminal";
      }
      {
        mode = "t";
        key = "<ESC>";
        action = "<C-\\><C-n>";
      }

      # Telescope
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
        options.desc = "Find files";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>Telescope live_grep<CR>";
        options.desc = "Live grep";
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope buffers<CR>";
        options.desc = "Find buffers";
      }
      {
        mode = "n";
        key = "<leader>fs";
        action = "<cmd>Telescope treesitter<CR>";
        options.desc = "Find symbols";
      }
      {
        mode = "n";
        key = "<leader>glg";
        action = "<cmd>Telescope git_commits<CR>";
        options.desc = "Find Git commits";
      }
      {
        mode = "n";
        key = "<leader>glb";
        action = "<cmd>Telescope git_bcommits<CR>";
        options.desc = "Find Git commits";
      }

      # Neogit
      {
        mode = "n";
        key = "<leader>gg";
        action = "<cmd>Neogit<CR>";
        options.desc = "Open Neogit";
      }

      # Trouble
      {
        mode = "n";
        key = "<leader>xx";
        action = "<cmd>Trouble diagnostics toggle<CR>";
        options.desc = "Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>xq";
        action = "<cmd>Trouble qflist toggle<CR>";
        options.desc = "Quickfix";
      }
      {
        mode = "n";
        key = "<leader>xl";
        action = "<cmd>Trouble loclist toggle<CR>";
        options.desc = "Location List";
      }
      {
        mode = "n";
        key = "<leader>xt";
        action = "<cmd>Trouble todo toggle<CR>";
        options.desc = "Todo";
      }
    ];

    extraConfigLua = ''
      vim.notify = require("mini.notify").make_notify()
    '';
  };
}
