{ pkgs, ...}: {

	programs.fish = {
		enable = true;
		shellAliases = {
			nrs = "sudo nixos-rebuild switch --flake ~/nix";
			nrb = "sudo nixos-rebuild boot --flake ~/nix";
			hms = "home-manager switch --flake ~/nix";

      v = "nvim";
      vi = "nvim";
      vim = "nvim";

      die =  "shutdown now";
      lsa = "ls -la";
      c = "clear";
      ff = "fastfetch";

      confnix = "cd ~/nix && tmux new-session -s vim && tmux new-session -s cmd";
		};

    interactiveShellInit = ''
      set fish_greeting
      '';
	};
}
