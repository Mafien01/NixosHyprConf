{ pkgs, ...}: {

  nixpkgs.overlays = [(final: prev: {
      rofimoji = prev.rofimoji.override { rofi = prev.rofi-wayland; };
  })];
}
