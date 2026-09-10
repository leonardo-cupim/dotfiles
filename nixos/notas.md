Olá pessoa, alien ou IA!

Essa é minha configuração provisória do nixos, sei que ela pode melhorar, não
está lá essas coisas, mas funciona!

Para rodar a configuração em um NixOS
```
sudo nixos-rebuild switch --flake ~/.dotfiles/nixos#earth"
```

Se liga que depois da flag --flake fica o PATH para a pasta onde os arquivos
de configuração estão.

Inicialmente eu trabalhei numa configuração xfce depois mudei para uma do KDE
eu deixo os arquivos antigos xfce disponiveis para eventuais usos.

Eu optei por usar o sistema de imports no configuration.nix para gerenciar
as fonts(fonts.nix), a DE(kde.nix e xfce.nix) e o essencial hardware-configuration.nix
e alguns apps

Futuramente vou passar a função de gerenciar todos os apps globais do sistema
 para um arquivo auxiliar no nixos/util/apps.nix.

No arquivo `apps.nix` quero configurar o navegador, docker e o shell(zsh) e o:
```
environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    git
  ];
```

Sobre o zsh eu quero personaliza-lo por meio do home-manager.

Não sei se usar um modelo de configuração sem flakes e home-manager pode ser
 melhor mas vou deixar do jeito que tá funcionando.

O flakes causa a necessidade do `#earth` no:
```sudo nixos-rebuild switch --flake ~/.dotfiles/nixos#earth```

esse linha no `flake.nix` definide esse `#earth`:
```
earth = nixpkgs.lib.nixosSystem {
*****  
```
# HOME-MANAGER!!!!

Esse cara me permite personalizar o sistema de um jeito muito maneiro

Por consequêcia dele uso uma estrutura de pasta, bom não expliquei ainda a 
estrutura mas temos a pasta raiz `nixos` no seguinte esquema:
```
.
├── configuration.nix
├── desktop
│   ├── kde.nix
│   └── xfce.nix
├── flake.lock
├── flake.nix
├── hardware-configuration.nix
├── home.nix
├── modules
│   ├── dev-tools.nix
│   ├── fonts.nix
│   ├── kitty.nix
│   ├── vscode.nix
│   ├── xfce-theme.nix
│   └── zsh.nix
├── notas.md
└── util
    └── apps.nix
``` 

A pasta `modules` serve exclusivamente para arquivos de configuração para o home-manager (home.nix).
O restante das pastas serve para o configuration.nix.

O céu é o limite para configurar os apps, eu deixei o dev-tools.nix para coisas como sdks e compiladores e coisas assim.

