{ pkgs, ...}: {

  environment.systemPackages = [
    pkgs.catppuccin-gtk
  ];

  #  gtk = {
  #    enable = true;
  #    theme = {
  #      package = pkgs.catppuccin-gtk;
  #      name = 
  #    };
  #  };
}
