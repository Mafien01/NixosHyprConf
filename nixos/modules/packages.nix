{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [

# Desktop apps
    firefox
    mpv
    obs-studio
    telegram-desktop
    vesktop
    zapzap

# Hyprland
    bemoji
    kitty
    rofi-wayland
    swaynotificationcenter
    swayr
    waybar

# Wayland stuff
    wl-clipboard
    cliphist
    xdg-desktop-portal
    xdg-desktop-portal-hyprland
    xwayland

# CLI
    btop
    cava
    curl
    fastfetch
    ffmpeg
    file
    fzf
    git
    jq
    killall
    lazydocker
    lazygit
    ncdu
    neovim
    ntfs3g
    ripgrep
    tmux
    tree
    unzip
    wget
    zip

# Screenshotting
    grim
    slurp

# Theming
    catppuccin-cursors.mochaLavender
    catppuccin-grub

# Other
    gcc
    home-manager
  ];

  fonts.packages = with pkgs; [
    dina-font
    fira-code
    fira-code-symbols
    liberation_ttf
    mplus-outline-fonts.githubRelease
    nerd-fonts.fira-code
    nerd-fonts.symbols-only
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    proggyfonts
  ];
}
