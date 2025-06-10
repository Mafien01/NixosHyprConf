{pkgs, ...}: {

  wayland.windowManager.hyprland.enable = true;

  home.packages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
  ];

  home.file = {
    ".config/hypr".source = "./config";
  };

}
