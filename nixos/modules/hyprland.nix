# In your Hyprland module file, e.g., modules/hyprland.nix
{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;

    # Correct way to add Hyprland configuration lines
    extraConfig = ''
      env = WLR_DRM_NO_ATOMIC,1
      env = WLR_RENDERER_ALLOW_SOFTWARE,1
      env = WLR_USE_LIBINPUT,1
      env = WLR_NO_HARDWARE_CURSORS,1

      env = XDG_SESSION_TYPE,wayland
      env = XDG_SESSION_DESKTOP,Hyprland

      env = XCURSOR_SIZE,24

      # Qt Wayland backend
      env = QT_QPA_PLATFORM,wayland

      xwayland {
        force_zero_scaling = true
      }
    '';
  };
}
