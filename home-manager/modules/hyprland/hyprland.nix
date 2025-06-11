{pkgs, ...}: {

  wayland.windowManager.hyprland.enable = true;

  home.packages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
    kitty
    swaynotificationcenter
  ];

  home.file = {
    ".config/hypr".source = ./hypr;
  };

}
