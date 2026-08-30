{ pkgs, ... }:
{
  home.packages = with pkgs; [
    codex
    fastfetch
  ];

  # Btop (top)
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "tokyo-storm";
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
  programs.gh.enable = true;

  # Lazygit
  programs.lazygit.enable = true;

  # Fzf
  programs.fzf = {
    enable = true;
  };
}
