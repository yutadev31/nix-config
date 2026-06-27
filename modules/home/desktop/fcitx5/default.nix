{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-hangul
      qt6Packages.fcitx5-chinese-addons
      fcitx5-gtk
      fcitx5-tokyonight
    ];
    fcitx5.settings = {
      globalOptions = {
        Hotkey = {
          "TriggerKeys/0" = "Zenkaku_Hankaku";
          "EnumerateGroupForwardKeys/0" = "Muhenkan";
          "EnumerateGroupBackwardKeys/0" = "Shift+Muhenkan";
        };
      };
      inputMethod = {
        GroupOrder."0" = "Japanese";
        GroupOrder."1" = "Korean";
        GroupOrder."2" = "Chinese";

        # Japanese
        "Groups/0" = {
          Name = "Japanese";
          "Default Layout" = "jp";
          DefaultIM = "mozc";
        };
        "Groups/0/Items/0".Name = "keyboard-jp";
        "Groups/0/Items/1".Name = "mozc";

        # Korean
        "Groups/1" = {
          Name = "Korean";
          "Default Layout" = "kr";
          DefaultIM = "hangul";
        };
        "Groups/1/Items/0".Name = "keyboard-kr";
        "Groups/1/Items/1".Name = "hangul";

        # Chinese
        "Groups/2" = {
          Name = "Chinese";
          "Default Layout" = "cn";
          DefaultIM = "pinyin";
        };
        "Groups/2/Items/0".Name = "keyboard-cn";
        "Groups/2/Items/1".Name = "pinyin";
      };
      addons = {
        classicui.globalSection = {
          Theme = "Tokyonight-Storm";
        };
      };
    };
  };
}
