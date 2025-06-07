{ config, lib, pkgs, ... }: {

	imports = [
		./hardware-configuration.nix
		./modules.nix
	];


  networking.hostName = "nixos";

  time = {
    timeZone = "Asia/Almaty";
    hardwareClockInLocalTime = true;
  };

  i18n.defaultLocale = "en_US.UTF-8";


  services.displayManager.ly.enable = true;

  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  programs.hyprland.enable = true;


  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
}

