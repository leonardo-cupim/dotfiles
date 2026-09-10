{ config, pkgs, ... }:

{
  programs.firefox.enable = true;

  programs.zsh.enable = true;

  programs.steam.enable = true;

  virtualisation.docker = {
    enable = true;
  };
}
