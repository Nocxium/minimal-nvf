{
  config.vim = {
    # snippets.luasnip.enable = true;
    # binds = {
    #   whichKey.enable = true;
    # };

    # lsp.enable = true;
    # treesitter.enable = true;

    languages = {
      nix = {
        enable = true;
        extraDiagnostics.enable = true;
        lsp = {
          server = "nixd";
        };
        format = {
          enable = true;
        };
      };
    };

    # autocomplete.blink-cmp = {
    #   enable = true;
    #   friendly-snippets.enable = true;
    # };

    autocomplete.nvim-cmp = {
      enable = true;
      sourcePlugins = [
        "cmp-path"
      ];
      setupOpts.sorting.comparators = [
        {
          _type = "lua-inline";
          expr = "deprio(kinds.Text)";
        }
        "exact"
        "score"
        "kind"
        "length"
        "sort_text"
        "offset"
      ];
    };
    #   telescope = {
    #     enable = true;
    #     mappings = {
    #       liveGrep = "<leader>fw";
    #     };
    #     setupOpts = {
    #       defaults = {
    #         path_display = ["truncate"];
    #       };
    #       extensions = {
    #         file_browser = {
    #           cwd_to_path = true;
    #           initial_mode = "normal";
    #           path = lib.generators.mkLuaInline ''
    #             function()
    #               return ":%:p:h"
    #             end
    #           '';
    #         };
    #       };
    #     };
    #   };
    #   treesitter = {
    #     context.enable = true;
    #   };
    #
    #   options = {
    #     backup = false;
    #     conceallevel = 0;
    #     fileencoding = "utf-8";
    #     hidden = true;
    #     ignorecase = true;
    #     mouse = "a";
    #     pumheight = 8;
    #     pumblend = 10;
    #     showmode = false;
    #     smartcase = true;
    #     smartindent = true;
    #     splitbelow = true;
    #     splitright = true;
    #     swapfile = true;
    #     timeoutlen = 500;
    #     undofile = true;
    #     updatetime = 250;
    #     writebackup = false;
    #     expandtab = true;
    #     shiftwidth = 2;
    #     tabstop = 2;
    #     cursorline = true;
    #     number = true;
    #     relativenumber = true;
    #     numberwidth = 4;
    #     signcolumn = "yes";
    #     wrap = true;
    #     scrolloff = 8;
    #     sidescrolloff = 8;
    #     lazyredraw = true;
    #     termguicolors = true;
  };
}
