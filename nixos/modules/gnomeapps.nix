{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    nautilus
    eog
    totem
    gnome-calculator
  ];
  services.gvfs.enable = true;

  nixpkgs.overlays = [(self: super: {
    gnome = super.gnome.overrideScope' (gself: gsuper: {
      nautilus = gsuper.nautilus.overrideAttrs (nsuper: {
        buildInputs = nsuper.buildInputs ++ (with super.gst_all_1; [
          gst-plugins-good
          gst-plugins-bad
        ]);
      });
    });
  })];
}
