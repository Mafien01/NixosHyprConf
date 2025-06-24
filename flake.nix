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

    nixcord.url = "github:kaylorben/nixcord";
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    hyprpanel,
    nvf,
    catppuccin,
    nixcord,
    ...
  }: let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
      overlays = [
        inputs.hyprpanel.overlay
      ];
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./nixos/configuration.nix
        catppuccin.nixosModules.catppuccin
        home-manager.nixosModules.home-manager
      ];
      nixpkgs.config.allowUnfree = true;
    };

    homeConfigurations.mafien0 = home-manager.lib.homeManagerConfiguration {
      pkgs = pkgs;
      extraSpecialArgs = {
        inherit system;
        inherit inputs;
      };
      modules = [
        nvf.homeManagerModules.default
        catppuccin.homeModules.catppuccin
        inputs.nixcord.homeModules.nixcord
        ./home-manager/home.nix
      ];
    };
  };
}
