{ lib, ... }: {
	imports = [
    ./cursor.nix
    ./gtk.nix
	];

  catppuccin = lib.mkForce {
    flavor = "mocha";
    #  enable = true;
  };
}
