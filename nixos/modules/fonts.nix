{ pkgs, ... }:

{
  # Habilita o suporte a fontes no sistema
  fonts.enableDefaultPackages = true;

  # Instalação das Nerd Fonts globalmente
  fonts.packages = with pkgs; [
    symbola
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.noto
    nerd-fonts.symbols-only
  ];
}
