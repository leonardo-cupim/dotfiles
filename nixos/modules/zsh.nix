{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    # Aliases de shell
    shellAliases = {
      ll = "ls -l";
      rebuild = "sudo nixos-rebuild switch --flake $NIXOS_CONFIG_PATH";
    };

    # Configuração do Oh My Zsh
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
        "docker"
      ];
      theme = "afowler";
    };

    # Configurações adicionais no .zshrc (export de variáveis, scripts, etc)
    initContent = ''
      # Exemplo: export PATH=$HOME/.local/bin:$PATH
      export NIXOS_CONFIG_PATH=/home/leo/.dotfiles/nixos#earth

      zstyle ':completion:*' menu select

      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

      export PATH="$HOME/.config/emacs/bin:$PATH"
    '';
  };
}
