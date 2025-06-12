{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [

# Desktop apps
    mpv
    obs-studio
    telegram-desktop
    vesktop
    prismlauncher
    pwvucontrol

# Hyprland
    bemoji
    rofi-wayland

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
