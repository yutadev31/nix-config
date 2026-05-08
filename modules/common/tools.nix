{ pkgs, ... }:
{
  # System Tools
  environment.systemPackages = with pkgs; [
    vim
    curl
    wget
    psmisc
    file
    zip
    unzip
  ];
}
