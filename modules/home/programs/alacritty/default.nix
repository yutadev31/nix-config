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
          x = 12;
          y = 12;
        };
        opacity = 0.95;
      };
    };
  };
}
