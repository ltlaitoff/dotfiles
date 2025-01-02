return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    -- builtin picker
    config = function()
      local telescope = require("telescope")

      telescope.setup({

        pickers = {
          find_files = {
            hidden = true
          },
        },
      })

      -- TODO: git_files search?
    end;
}
