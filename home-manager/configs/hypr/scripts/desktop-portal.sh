#!/usr/bin/env bash

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
sleep 3

/usr/lib/xdg-desktop-portal-hyprland &
sleep 3
/usr/lib/xdg-desktop-portal &
sleep 1
