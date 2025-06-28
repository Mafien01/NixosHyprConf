{
  programs.nixvim = {
    enable = true;

    colorschemes = {
      catppuccin.enable = true;
    };

    opts = {
      tabstop = 2;
      shiftwidth = 2;
			relativenumber = true;
			autoindent = true;
			smartindent = true;
    };

    clipboard = {
      register = "unnamedplus";
    };

    plugins = {
      lualine.enable = true;
			telescope.enable = true;
			web-devicons.enable = true;
			lsp.enable = true;

			treesitter = {
				enable = true;
				settings.indent.enable = false;
			};
		};

		lsp = {
			servers = {
				nil_ls.enable = true;
			};
		};

		keymaps = [
		{
			action = "<cmd>Telescope find_files<CR>";
			key = "ff";
			mode = ["n"];
			options.silent = true;
		}

		{
			action = "<cmd>Telescope live_grep<CR>";
			key = "fg";
			mode = ["n"];
			options.silent = true;
		}
		{
			action = "<cmd>Telescope diagnostics<CR>";
			key = "fd";
			mode = ["n"];
			options.silent = true;
		}
		];
  };
}
