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
		};

    interactiveShellInit = ''
      set fish_greeting
      '';
	};

  programs.bash = {
    interactiveShellInit = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
        then
          shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
          exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
          fi
          '';
  };
}
