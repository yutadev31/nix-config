{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };

      animations = {
        enabled = true;
        fade_in = {
          duration = 200;
          bezier = "easeOutQuint";
        };
        fade_out = {
          duration = 200;
          bezier = "easeOutQuint";
        };
      };

      bezier = [ "easeOutQuint, 0.23, 1, 0.32, 1" ];

      background = [
        {
          monitor = "";
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
          brightness = 0.7;
        }
      ];

      label = [
        {
          monitor = "";
          text = ''<span font_weight="bold">$TIME</span>'';
          color = "rgb(7aa2f7)";
          font_size = 72;
          halign = "center";
          valign = "center";
          position = "0, 120";
        }
      ];

      "input-field" = [
        {
          monitor = "";
          size = "280, 56";
          position = "0, -20";
          dots_center = true;
          fade_on_empty = false;
          outline_thickness = 3;
          inner_color = "rgb(1a1b26)";
          outer_color = "rgb(7aa2f7)";
          font_color = "rgb(c0caf5)";
          check_color = "rgb(7dcfff)";
          fail_color = "rgb(f7768e)";
          placeholder_text = ''<span foreground="##c0caf5">Password...</span>'';
        }
      ];
    };
  };
}
