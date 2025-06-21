{pkgs, config, ...}: {

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
    extraConfig = ''
    # config in .config/hypr/hyprland.conf
    '';
  };
  home.file = {
    ".config/hypr".source = ./hypr;
  };
}

