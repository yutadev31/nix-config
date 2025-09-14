{ pkgs, ... }: {
  programs.firefox = {
    enable = true;
    # profiles.default = {
    #   id = 0;
    #   name = "default";
    #   isDefault = true;
    #   settings = {
    #     "browser.aboutConfig.showWarning" = false;
    #     "browser.cache.disk.enable" = false;
    #
    #     "general.autoScroll" = true;
    #     "middlemouse.paste" = false;
    #   };
    # };
  };
}
