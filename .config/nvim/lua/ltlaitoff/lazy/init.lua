return {
  "nvim-lua/plenary.nvim", -- don't forget to add this one if you don't have it yet!

  'wakatime/vim-wakatime',

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 10000, 
    config = function()
      vim.cmd.colorscheme "catppuccin-latte"
    end;
  },

  -- {
  --   "aca/emmet-ls",
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --     local configs = require("lspconfig/configs")
  --
  --     local capabilities = vim.lsp.protocol.make_client_capabilities()
  --     capabilities.textDocument.completion.completionItem.snippetSupport = true
  --     capabilities.textDocument.completion.completionItem.resolveSupport = {
  --       properties = {
  --         "documentation",
  --         "detail",
  --         "additionalTextEdits",
  --       },
  --     }
  --
  --     if not lspconfig.emmet_ls then
  --       configs.emmet_ls = {
  --         default_config = {
  --           cmd = { "emmet-ls", "--stdio" },
  --           filetypes = {
  --             "html",
  --             "css",
  --             "typescriptreact",
  --             "javascriptreact",
  --             "svelte",
  --             "vue",
  --           },
  --           root_dir = function(fname)
  --             return vim.loop.cwd()
  --           end,
  --           settings = {},
  --         },
  --       }
  --     end
  --     lspconfig.emmet_ls.setup({ capabilities = capabilities })
  --   end,
  -- },

  -- 'andweeb/presence.nvim',

  -- 'mg979/vim-visual-multi',
  --
  -- "davidosomething/format-ts-errors.nvim",

  -- {
  --   'jsongerber/nvim-px-to-rem',
  --   -- config = true,
  --   --If you need to set some options replace the line above with:
  --   config = function()
  --     require('nvim-px-to-rem').setup(
  --
  --       {
  --         root_font_size = 16,
  --         decimal_count = 4,
  --         show_virtual_text = true,
  --         add_cmp_source = true,
  --         disable_keymaps = false,
  --         filetypes = {
  --           "css",
  --           "scss",
  --           "sass",
  --           "typescript",
  --           "typescriptreact"
  --         },
  --       }
  --     )
  --   end,
  -- }
}
