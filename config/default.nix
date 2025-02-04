{
  config = {
    colorschemes.oxocarbon.enable = true;
    enableMan = false;
    viAlias = true;
    vimAlias = true;
    globals = {
      mapleader = " ";
    };
    opts =
      let
        twidth = 2;
      in
      {
        autoindent = true;
        clipboard = "unnamedplus";
        compatible = false;
        expandtab = true;
        hlsearch = true;
        incsearch = true;
        mouse = "a";
        number = true;
        wrap = false;
        # spell = true;
        sw = twidth;
        ts = twidth;
        softtabstop = twidth;
        foldlevel = 99;
      };
    editorconfig = {
      enable = true;
    };
    extraConfigLuaPre = ''
      local luasnip = require("luasnip")
    '';
    plugins = {
      bufferline.enable = true;
      comment.enable = true;
      fugitive.enable = true;
      # none-ls.enable = false;
      none-ls = {
        enable = true;
        sources = {
          code_actions = {
            statix.enable = true;
          };
          diagnostics = {
            markdownlint.enable = true;
            pylint.enable = true;
            statix.enable = true;
            write_good.enable = true;
          };
          formatting = {
            alejandra.enable = true;
            black.enable = true;
          };
        };
      };
      lsp = {
        enable = true;
        servers = {
          elixirls = {
            enable = true;
          };
          lua_ls = {
            enable = true;
          };
          marksman = {
            enable = true;
          };
          pyright = {
            enable = true;
          };
          # sqls = {enable = true;};
          ts_ls = {
            enable = true;
          };
        };
        keymaps.diagnostic = {
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
          "<leader>q" = "setloclist";
        };
        keymaps.lspBuf = {
          K = "hover";
          gD = "declaration";
          gd = "definition";
          gi = "implementation";
          gr = "references";
          gt = "type_definition";
          "<C-k>" = "signature_help";
          "<leader>a" = "code_action";
          "<leader>rn" = "rename";
          "<leader>f" = "format";
        };
      };
      lsp-format = {
        enable = true;
      };
      luasnip.enable = true;
      nix.enable = true;
      nvim-autopairs.enable = true;
      cmp = {
        enable = true;
        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          mapping = {
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.close()";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };
          sources = [
            { name = "path"; }
            {
              name = "nvim_lsp";
            }
            { name = "luasnip"; }
            {
              name = "buffer"; # Words from other open buffers can also be suggested.
              option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            }
          ];
        };
      };
      nvim-lightbulb.enable = true;
      rustaceanvim.enable = true;
      vim-surround.enable = true;
      telescope.enable = true;
      web-devicons.enable = true;
      treesitter = {
        enable = true;
        nixvimInjections = true;
        settings = {
          highlight.enable = true;
          indent.enable = true;
        };
        folding = true;
      };
    };
  };
}
