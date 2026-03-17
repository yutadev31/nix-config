{ pkgs, ... }:
let
  firefoxSettings = {
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
in
{
  home.packages = with pkgs; [
    discord-ptb
    # discord-canary
    vlc
    zed-editor
    gimp
    inkscape
    qgis
    logseq
    voicevox
    # zrythm
    # qjackctl
    kdePackages.kdenlive
    # blender
    jetbrains.idea
  ];

  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        isDefault = true;
        settings = firefoxSettings;
      };
      english = {
        id = 1;
        settings = firefoxSettings;
      };
    };
  };

  programs.obs-studio.enable = true;
}
