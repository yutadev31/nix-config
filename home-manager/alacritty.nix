{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      terminal.shell = "/bin/fish";
      font = {
        size = 12;
        normal = {
          family = "Hack Nerd Font";
          style = "Regular";
        };
        bold = {
          family = "Hack Nerd Font";
          style = "Bold";
        };
        italic = {
          family = "Hack Nerd Font";
          style = "Italic";
        };
        bold_italic = {
          family = "Hack Nerd Font";
          style = "Bold Italic";
        };
      };
      window = {
        padding = {
          x = 4;
          y = 4;
        };
        opacity = 0.95;
      };
      colors = {
        primary = {
          background = "#1e212e";
          foreground = "#f2f2f2";
        };
        cursor = {
          text = "#1e212e";
          cursor = "#f2f2f2";
        };
        selection = {
          text = "#1e212e";
          cursor = "#3d425c";
        };
        normal = {
          black = "#596080";
          red = "#ec7979";
          green = "#78ed90";
          yellow = "#eccd79";
          blue = "#788ced";
          magenta = "#9f78ed";
          cyan = "#78eded";
          white = "#d9d9d9";
        };
        bright = {
          black = "#596080";
          red = "#ec7979";
          green = "#78ed90";
          yellow = "#eccd79";
          blue = "#788ced";
          magenta = "#9f78ed";
          cyan = "#78eded";
          white = "#d9d9d9";
        };
      };
    };
  };
}
