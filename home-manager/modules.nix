{ inputs, ...}: {

	imports = [
    ./modules/theme.nix

    ./modules/hyprland/hyprland.nix
    ./modules/hyprpanel/hyprpanel.nix
    ./modules/rofi/rofi.nix

    ./modules/fish.nix
    ./modules/git.nix
    ./modules/firefox.nix
    ./modules/nvf.nix
	];
}
