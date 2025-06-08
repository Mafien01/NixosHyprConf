let configDir = ../../dotfiles;
in
{
  home.file = {
    ".config/hypr".source = "${configDir}/hypr";
  };
}
