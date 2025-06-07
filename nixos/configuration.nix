{ config, lib, pkgs, ... }: {

	imports = [
		./hardware-configuration.nix
		./modules.nix
	];


  networking.hostName = "nixos";

  i18n.defaultLocale = "en_US.UTF-8";

  time = {
    timeZone = "Asia/Almaty";
    hardwareClockInLocalTime = true;
  };


  services.displayManager.ly.enable = true;
  programs.hyprland.enable = true;

  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.


  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
}

