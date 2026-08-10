{
  programs.fish = {
    enable = true;
    shellAliases = {
      grep = "grep --color=auto";
      diff = "diff --color=auto";
      mv = "mv -i";
      rm = "rm -i";
      cp = "cp -i";
      cl = "clear";

      # LS
      ls = "eza --icons auto";
      l = "ls";
      sl = "ls";
      ll = "ls -l";
      la = "ls -la";

      # Neovim
      nano = "nvim";
      emacs = "nvim";
      vim = "nvim";
      vi = "nvim";

      # Git
      g = "git";
      gi = "git init";
      gcl = "git clone";
      ga = "git add";
      gaa = "git add .";
      grs = "git restore --staged";
      grsa = "git restore --staged";
      gc = "git commit";
      gca = "git commit --amend";
      gci = ''git commit -m "Initial commit"'';
      gcinit = ''git commit -m "Initial commit"'';
      gp = "git push";
      gph = "git push -u origin HEAD";
      gl = "git pull --autostash";
      gr = "git remote";
      gs = "git status -sb";
      gd = "git diff";
      gdc = "git diff --cached";
      gco = "git checkout";
      gcb = "git checkout -b";
      gb = "git branch";
      gbr = "git branch -r";
      gw = "git switch";
      gwm = "git switch main";
      gm = "git merge";
      grh = "git reset --hard HEAD";
      gstash = "git stash";
      gpop = "git stash pop";
      glg = "git log --oneline --graph --all --decorate";
      lg = "lazygit";
    };
    shellInit = ''
      export PATH="$HOME/.cargo/bin:$PATH"
      export ANDROID_HOME="$HOME/Android/Sdk"

      function cd
        builtin cd $argv
        ls
      end

      touch ~/.env.fish
      source ~/.env.fish
    '';
    interactiveShellInit = ''
      set fish_greeting
    '';
  };
}
