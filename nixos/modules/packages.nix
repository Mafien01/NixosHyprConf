{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [

# Desktop apps
      firefox
      discord
      telegram-desktop
      zapzap
      obs-studio
      mpv
      pwvucontrol
      openvpn
      vesktop

# Hyprland
      hyprpaper
      hyprcursor
      hypridle
      hyprlock
      waybar
      kitty
      swaynotificationcenter
      clipman
      rofi-wayland
      bemoji
      swayr

# Wayland stuff
      xwayland
      wl-clipboard
      cliphist
      xdg-desktop-portal
      xdg-desktop-portal-hyprland

# CLI
      neovim
      tmux
      fastfetch
      tree
      file
      wget
      curl
      git
      btop
      zip
      unzip
      ffmpeg
      cava
      ntfs3g
      lazygit
      lazydocker
      fzf
      ripgrep
      ncdu

# Screenshotting
      grim
      slurp

# Other
      home-manager
      gcc
  ];


  fonts.packages = with pkgs; [
    noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
  ];

}
