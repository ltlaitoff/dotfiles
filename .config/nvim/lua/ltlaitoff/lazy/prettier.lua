return {
  'MunifTanjim/prettier.nvim',

	enable = false,
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvimtools/none-ls.nvim',
  },

  config = function()
    local prettier = require("prettier")

    prettier.setup({
      bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
      filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
      },

      cli_options = {
        -- https://prettier.io/docs/en/cli.html#--config-precedence
        config_precedence = "file-override", -- or "cli-override" or "file-override"
      },
    })
  end;
}
