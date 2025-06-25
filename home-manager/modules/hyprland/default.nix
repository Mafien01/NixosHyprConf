{pkgs, ...}: {

  imports = [
    ./general.nix
    ./keybinds.nix
    ./env.nix
    ./windowrules.nix
  ];

# essentials
  home.packages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
    hyprpicker
    kitty
  ];

# hyprland
  wayland.windowManager.hyprland = {
    enable = true;
  };
}
