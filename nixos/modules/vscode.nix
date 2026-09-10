{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    # Exemplo de extensões que você deseja instalar automaticamente
    profiles.default.extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      vscode-icons-team.vscode-icons
      ms-python.python
      jnoortheen.nix-ide
      pkief.material-icon-theme
      teabyii.ayu
    ];

    # settings.json
    profiles.default.userSettings = {
      "editor.fontSize" = 18;
      "editor.fontFamily" = "JetBrainsMonoNL Nerd Font Mono";
      "workbench.iconTheme" = "material-icon-theme";
      "editor.formatOnSave" = true;
      "window.menuBarVisibility" = "toggle";
      "workbench.colorTheme" = "Ayu Dark Bordered";

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil";
      "nix.serverSettings" = {
        "nil" = {
          "formatting" = {
            "command" = [ "nixfmt" ];
          };
        };
      };

      "[nix]" = {
        "editor.defaultFormatter" = "jnoortheen.nix-ide";
        "editor.formatOnSave" = true;
      };
    };
  };
}
