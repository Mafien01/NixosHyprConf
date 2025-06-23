{
  description = "System config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprpanel = {
      url = "github:jas-singhfsu/hyprpanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

  };

  outputs = inputs @ { 
    nixpkgs, 
    home-manager, 
    hyprpanel,
    nvf,
    catppuccin,
    ... }: let
      system = "x86_64-linux";
    in {

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
          ./nixos/configuration.nix
          catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager
        ];
    };

    homeConfigurations.mafien0 = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            inputs.hyprpanel.overlay
          ];
        };
        extraSpecialArgs = {
          inherit system;
          inherit inputs;
        };
        modules = [ 
          nvf.homeManagerModules.default
          catppuccin.homeModules.catppuccin
          ./home-manager/home.nix 
        ];
      };
  };
}
