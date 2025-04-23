return {
  'akinsho/bufferline.nvim',

  version = "*",

	dependencies = {
		"echasnovski/mini.icons",
	},
  --
  -- dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup{}
  end
}
