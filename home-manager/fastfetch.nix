{ pkgs, ... }: {
  programs.fastfetch = {
    enable = true;
    settings = {
      display.separator = " ";
      modules = [
        {
          type = "title";
          format = "{user-name}@{host-name}";
          key = "󰌢 Host      ";
          keyColor = "green";
        }
        {
          type = "cpu";
          key = "├ 󰻠 CPU     ";
          keyColor = "green";
        }
        {
          type = "gpu";
          key = "├ 󰍛 GPU     ";
          keyColor = "green";
        }
        {
          type = "disk";
          key = "├  Disk    ";
          keyColor = "green";
        }
        {
          type = "memory";
          key = "├ 󰑭 RAM     ";
          keyColor = "green";
        }
        {
          type = "swap";
          key = "├ 󰓡 Swap    ";
          keyColor = "green";
        }
        {
          type = "uptime";
          key = "├ 󰅐 Uptime  ";
          keyColor = "green";
        }
        {
          type = "display";
          key = "├ 󰍹 Display ";
          keyColor = "green";
        }
        {
          type = "sound";
          key = "└  Sound   ";
          keyColor = "green";
        }
        "break"
        {
          type = "os";
          key = " OS        ";
          keyColor = "yellow";
        }
        {
          type = "kernel";
          key = "├  Kernel  ";
          keyColor = "yellow";
        }
        {
          type = "packages";
          key = "├ 󰏖 Packages";
          keyColor = "yellow";
        }
        {
          type = "shell";
          key = "├  Shell   ";
          keyColor = "yellow";
        }
        {
          type = "terminal";
          key = "├  Terminal";
          keyColor = "yellow";
        }
        {
          type = "wm";
          key = "└  WM      ";
          keyColor = "yellow";
        }
      ];
    };
  };
}
