{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gemini-cli
    codex
    # gping
    # onefetch
    # zellij
    # helix
    # nodePackages.cspell
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
      user.signingkey = "1780545869A096C7";
      init.defaultBranch = "main";
      ghq.root = "~/dev";
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
}
