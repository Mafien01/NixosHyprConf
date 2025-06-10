{ config, pkgs, ... }: {

  home.pointerCursor = {
    enable = true; 
    package = pkgs.catppuccin-cursors.mochaLavender;
    name = "catppuccin-mocha-lavender-cursors";
    size = 24;
  };

  gtk = {
    enable = true;
    gtk2.extraConfig = "gtk-cursor-theme-name = \"catppuccin-mocha-lavender-cursors\";";

    gtk3.extraConfig = {
      gtk-cursor-theme-name = "catppuccin-mocha-lavender-cursors";
    };

    gtk4.extraConfig = {
      gtk-cursor-theme-name = "catppuccin-mocha-lavender-cursors";
    };
  };

  xsession = {
    enable = true;
    pointerCursor = {
      package = pkgs.catppuccin-cursors.mochaLavender;
      name = "catppuccin-mocha-lavender-cursors";
      size = 24;
    };
  };
}
