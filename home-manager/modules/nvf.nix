{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        statusline.lualine.enable = true;
        autocomplete.nvim-cmp.enable = true;
        telescope.enable = true;

        options = {
          tabstop = 2;
          shiftwidth = 2;
        };

        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
        };

        clipboard = {
          enable = true;
          providers.wl-copy.enable = true;
          registers = "unnamedplus";
        };

        lsp = {
          enable = true;
        };

        keymaps = [
        {
          key = "ff";
          mode = ["n"];
          action = ":Telescope find_files<CR>";
          silent = true;
          desc = "Fuzzy finder";
        }

        {
          key = "fg";
          mode = ["n"];
          action = ":Telescope live_grep<CR>";
          silent = true;
          desc = "live grep";
        }
        ];

      };
    };
  };
}
