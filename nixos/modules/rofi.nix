{ pkgs, ...}: {

  nixpkgs.overlays = [(final: prev: {
      (rofi-emoji.override { rofi-unwrapped = rofi-wayland-unwrapped; })
  })];
}
