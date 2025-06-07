{ config, pkgs, ...}: {

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    plugins = with pkgs; [
      (rofi-calc.override { rofi-unwrapped = rofi-wayland-unwrapped; })
        (rofi-emoji.override { rofi-unwrapped = rofi-wayland-unwrapped; })
        (rofi-power-menu.override { rofi-unwrapped = rofi-wayland-unwrapped; })
    ];
    modes = [ "drun" "run" "window" "calc" "emoji" "power"];
  };
}
