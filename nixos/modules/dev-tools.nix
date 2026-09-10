{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Nix
    nil
    nixfmt
    statix
    deadnix

    # Golang
    go
    sqlc
    gopls
    gotests
    gomodifytags
    gore
    go-task

    # Java
    jdk25
    maven
    graphviz

    # Extras...
    zig
    gcc
    shellcheck
    shfmt
    pandoc # markdown
    typst
    coreutils
    eza # ls turbinado
  ];
}
