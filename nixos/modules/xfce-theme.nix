{ pkgs, ... }:

{
  # 1. Instala os pacotes dos temas e ícones necessários no ambiente do usuário
  home.packages = with pkgs; [
    # Exemplo de temas populares (substitua pelos que você preferir)
    fluent-gtk-theme # Tema GTK / XFWM4
    papirus-icon-theme # Tema de ícones
    bibata-cursors # Tema de cursor que vimos antes
  ];

  # 2. Configura o GTK globalmente para o usuário
  gtk = {
    enable = true;
    theme = {
      package = pkgs.fluent-gtk-theme;
      name = "Fluent-Dark";
    };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
    };
  };

  # 3. Configura o XFCE diretamente via xfconf (equivalente ao que o Gerenciamento de Configurações faz)
  xfconf.settings = {
    # Configurações gerais de aparência (GTK, Ícones e Cursor)
    xsettings = {
      "Net/ThemeName" = "Fluent-Dark";
      "Net/IconThemeName" = "Papirus-Dark";
      "Gtk/CursorThemeName" = "Bibata-Modern-Classic";
      "Gtk/CursorThemeSize" = 24;
    };

    # Configuração do Gerenciador de Janelas (XFWM4 - decorações, barras de título, botões)
    xfwm4 = {
      "general/theme" = "Fluent-Dark"; # Tema das bordas das janelas do XFCE
      "general/box-move" = true; # Janela translúcida ao mover (opcional)
      "general/box-resize" = true; # Janela translúcida ao redimensionar (opcional)
    };

    xfce4-desktop = {
      "backdrop/screen0/monitor0/image-path" = "/home/leo/Imagens/ag-carinae-hubble-3840x2160-12805.jpg";
    };
  };
}
