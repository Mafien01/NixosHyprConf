{ pkgs, ... }: {

  home.packages = with pkgs; [
    waybar
    jq
    noti
    wttrbar
  ];
}
