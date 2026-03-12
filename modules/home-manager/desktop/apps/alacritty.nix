let
  colors = import ../../colors.nix;
in
{
  programs.alacritty = {
    enable = true;
    settings = {
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
          x = 8;
          y = 8;
        };
        opacity = 0.95;
      };
      colors = {
        primary = {
          background = colors.bg;
          foreground = colors.fg;
        };
        cursor = {
          text = "CellForeground";
          cursor = colors.fg;
        };
        selection = {
          text = "CellForeground";
          background = colors.selection;
        };
        normal = {
          black = colors.black;
          red = colors.red;
          green = colors.green;
          yellow = colors.yellow;
          blue = colors.blue;
          magenta = colors.magenta;
          cyan = colors.cyan;
          white = colors.white;
        };
        bright = {
          black = colors.brightBlack;
          red = colors.brightRed;
          green = colors.brightGreen;
          yellow = colors.brightYellow;
          blue = colors.brightBlue;
          magenta = colors.brightMagenta;
          cyan = colors.brightCyan;
          white = colors.brightWhite;
        };
      };
    };
  };
}
