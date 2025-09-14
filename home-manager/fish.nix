{ pkgs, ... }: {
  programs.fish = {
    enable = true;
    shellAliases = {
      grep = "grep --color=auto";
      diff = "diff --color=auto";
      mv = "mv -i";
      rm = "rm -i";
      cp = "cp -i";
      l = "eza";
      ls = "eza";
      ll = "eza -l";
      la = "eza -la";
      lt = "eza --tree";
      cl = "clear";
      g = "git";
      gi = "git init";
      gcl = "git clone";
      ga = "git add";
      gaa = "git add .";
      gc = "git commit";
      gcinit = ''git commit -m "Initial commit"'';
      gp = "git push";
      gl = "git pull --autostash";
      gr = "git remote";
      gs = "git status -sb";
      gd = "git diff";
      gco = "git checkout";
      gcb = "git checkout -b";
      gb = "git branch";
      gbr = "git branch -r";
      gm = "git merge";
      grh = "git reset --hard HEAD";
      gstash = "git stash";
      gpop = "git stash pop";
      glg = "git log --oneline --graph --all --decorate";
    };
    shellInit = ''
      set -gx PATH $HOME/.nix-profile/bin $PATH
    '';
    interactiveShellInit = ''
      set fish_greeting
    '';
  };
}
