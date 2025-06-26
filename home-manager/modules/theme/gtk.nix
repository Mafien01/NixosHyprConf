{ pkgs, ... }: {
  gtk = {
    enable = true;
    theme = {
      name = "catppuccin-mocha-lavender-standard+normal";
      package = pkgs.catppuccin-gtk.override {
        variant = "mocha";
        accents = [ "lavender" ];
        size = "standard";
        tweaks = [ "normal" ];
      };
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };
}
