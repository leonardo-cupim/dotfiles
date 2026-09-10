{ config, pkgs, ... }:

{
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  #Ativa suporte a X11/XWayland
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  # Garante suporte a integração de aplicativos GTK no KDE
  programs.dconf.enable = true;
}
