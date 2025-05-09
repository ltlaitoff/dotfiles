return {
  'MunifTanjim/eslint.nvim',

  dependencies = {
    'nvimtools/none-ls.nvim',
    'neovim/nvim-lspconfig',
  },

  config = function()
    local eslint = require("eslint")

    eslint.setup({
      bin = 'eslint_d', -- or `eslint_d`
      code_actions = {
        enable = true,
        apply_on_save = {
          enable = true,
          types = { "directive", "problem", "suggestion", "layout" },
        },
        disable_rule_comment = {
          enable = true,
          location = "separate_line", -- or `same_line`
        },
      },
      diagnostics = {
        enable = true,
        report_unused_disable_directives = false,
        run_on = "type", -- or `save`
      },
    })
  end;
}
