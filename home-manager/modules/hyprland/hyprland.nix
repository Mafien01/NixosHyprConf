{pkgs, ...}: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''
    # config in .config/hypr/hyprland.conf
    '';
  };

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
