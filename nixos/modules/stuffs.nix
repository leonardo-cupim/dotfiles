{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vlc
    qbittorrent
    pika-backup

    melonds
    mgba
    azahar
    prismlauncher

    kdePackages.kdenlive
    inkscape
    onlyoffice-desktopeditors
    libreoffice-qt
    krita
    audacity
    godot
    qemu
    virtualbox
    virt-manager
  ];
}
