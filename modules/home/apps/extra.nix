{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # gimp
    # inkscape
    # qgis
    # voicevox
    # kdePackages.kdenlive
    # blender
    # anki-bin
    # zed-editor
    vlc
    brave
    jetbrains.idea
  ];

  programs.google-chrome.enable = true;

  programs.firefox = {
    enable = true;
    configPath = ".mozilla/firefox";
    profiles = {
      default = {
        isDefault = true;
        settings = {
          # Mouse
          "general.autoScroll" = true;
          "middlemouse.paste" = false;

          # Cache
          "browser.cache.disk.enable" = false;

          # Bookmark
          "browser.toolbars.bookmarks.visibility" = "always";

          # Privacy
          "privacy.firstparty.isolate" = true;
          "privacy.trackingprotection.enabled" = true;
          "media.peerconnection.enabled" = false;

          # Telemetry
          "toolkit.telemetry.enabled" = false;
          "toolkit.telemetry.unified" = false;
          "datareporting.healthreport.uploadEnabled" = false;

          # Other
          "browser.aboutConfig.showWarning" = false;

          # Performance
          "gfx.webrender.all" = true;
        };
      };
    };
  };

  programs.obs-studio.enable = true;
}
