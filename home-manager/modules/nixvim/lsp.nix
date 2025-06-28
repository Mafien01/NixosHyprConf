{
	programs.nixvim = {
		plugins.lsp.enable = true;

		lsp = {
			servers = {

				lua_ls = { # Lua
					enable = true;
					settings.telemetry.enable = false;
				};

				nil_ls.enable = true; # NIX
				cssls.enable = true; # CSS
				pyright.enable = true; # Python
				dockerls.enable = true; # Docker
				bashls.enable = true; # Bash
				markdown_oxide.enable = true; # Markdown
			};
		};
	};
}
