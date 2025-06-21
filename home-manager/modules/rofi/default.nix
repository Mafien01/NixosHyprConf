{ pkgs, ...}: {

  home.packages = with pkgs; [
    rofi-wayland
    bemoji
  ];

  home.file = {
    ".config/rofi".source = ./theme;
  };
}
