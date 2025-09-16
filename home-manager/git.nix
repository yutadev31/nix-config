{ pkgs, ... }: {
  programs.git = {
    enable = true;
    contents = {
      user = {
        name = "Yuta";
        email = "jp.yuta0131@gmail.com";
      };
      commit.template = "~/.gitmessage";
      init.defaultBranch = "main";
      ghq.root = "~/dev";
    };
  };

  programs.gh = { enable = true; };
}
