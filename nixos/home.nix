{ config, pkgs, ... }:

{

  home.stateVersion = "26.05";

  imports = [
    ./modules/vscode.nix
    ./modules/kitty.nix
    # ./modules/xfce-theme.nix
    ./modules/zsh.nix
    ./modules/dev-tools.nix
    ./modules/stuffs.nix
  ];

  # Informações básicas do usuário
  home.username = "leo";
  home.homeDirectory = "/home/leo";

  # Exemplo de pacotes instalados apenas para o usuário
  home.packages = with pkgs; [

    kdePackages.okular
    htop
    btop

    fd
    ripgrep

    emacs

    unzip
    zip

    docker-compose
  ];

  # Exemplo de configuração de um programa (Git)
  programs.git = {
    enable = true;
    settings.user.name = "Leonardo";
    settings.user.email = "leo.mota404@unitins.br";
  };

  programs.home-manager.enable = true;
}
