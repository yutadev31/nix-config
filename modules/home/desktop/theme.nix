{ pkgs, config, ... }:
{
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs.vimix-gtk-themes;
      name = "Vimix-dark-doder";
    };
    iconTheme = {
      package = pkgs.vimix-icon-theme;
      name = "Vimix-doder-dark";
    };
    gtk4.theme = config.gtk.theme;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}
