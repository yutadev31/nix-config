{ pkgs, ... }:
{
  home.packages = with pkgs; [
    codex
    cspell
    # gping
    # onefetch
    # zellij
    # delta
  ];

  # Bat (cat)
  programs.bat.enable = true;

  # Btop (top)
  programs.btop = {
    enable = true;
    settings = {
      theme_background = false;
      vim_keys = true;
    };
  };

  # Fd (find)
  programs.fd.enable = true;

  # Ripgrep (grep)
  programs.ripgrep.enable = true;

  # Eza (ls)
  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    extraOptions = [ "--icons" ];
  };

  # Git
  programs.git = {
    enable = true;
    settings = {
      user.name = "Yuta";
      user.email = "yuta256dev@gmail.com";
      init.defaultBranch = "main";
      user.signingkey = "732638DCBAA59D65";
      commit.gpgsign = true;
    };
  };

  # GitHub CLI
  programs.gh = {
    enable = true;
    settings = {
      editor = "nvim";
    };
  };

  # Lazygit
  programs.lazygit = {
    enable = true;
    settings = { };
  };

  # Helix
  programs.helix = {
    enable = true;

    settings = {
      theme = "onedark";
      editor = {
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
        file-picker = {
          hidden = false;
        };
      };
    };
    languages.language = [
      {
        name = "nix";
        auto-format = true;
      }
      {
        name = "rust";
        auto-format = true;
      }
      {
        name = "toml";
        auto-format = true;
      }
    ];
  };

  # Tmux
  programs.tmux = {
    enable = true;
    clock24 = true;
    terminal = "xterm-256color";
    prefix = "C-a";
    mouse = true;
    keyMode = "vi";
    historyLimit = 10000;
    baseIndex = 1;
    escapeTime = 0;

    extraConfig = ''
      # Reload config
      bind r source-file ~/.config/tmux/tmux.conf \; display-message "tmux reloaded"

      # Splits
      bind | split-window -h
      bind - split-window -v

      # Vim-like pane movement
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      # Better colors
      set -g default-terminal "tmux-256color"
      set -ga terminal-overrides ",xterm-256color:Tc"
    '';
  };

  # Fzf
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };
}
