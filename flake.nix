{
  description = "System config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    hyprpanel = {
      url = "github:jas-singhfsu/hyprpanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { 
    nixpkgs, 
    home-manager, 
    hyprpanel,
    ... }: let
      system = "x86_64-linux";
    in {

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [ ./nixos/configuration.nix ];
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
        modules = [ ./home-manager/home.nix ];
      };
  };
}
