{
  description = "Flakes e Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        # Substitua "seu-hostname" pelo nome da sua máquina (saída do comando `hostname`)
        earth = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hardware-configuration.nix
            ./configuration.nix

            # Integrando o Home Manager como módulo do NixOS
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              # Substitua "seu-usuario" pelo seu nome de usuário
              home-manager.users.leo = import ./home.nix;
            }
          ];
        };
      };
    };
}
