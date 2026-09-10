{ config, pkgs, ... }:

{
  # Ativa o sistema de janelas X11
  services.xserver.enable = true;

  # Configura o Display Manager e a interface XFCE
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };
}
