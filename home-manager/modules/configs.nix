let configDir = ../configs;
in
{
  home.file = {
    ".config/hypr".source = "${configDir}/hypr";
  };
}
