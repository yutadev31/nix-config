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

    plugins.aerial = {
      enable = true;

      settings = {
        layout = {
          defaultDirection = "prefer_right";
          minWidth = 30;
        };

        attachMode = "global";

        showGuides = true;
        filterKind = false;
      };
    };

    extraConfigLua = ''
      vim.notify = require("mini.notify").make_notify()
    '';
  };
}
