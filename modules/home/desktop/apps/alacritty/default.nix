{
  programs.alacritty = {
    enable = true;
    theme = "tokyo_night_storm";
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
    };
  };
}
