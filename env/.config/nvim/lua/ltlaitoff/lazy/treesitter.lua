return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		branch = "main",
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter').install({
				"html",
				"css",
				"javascript",
				"typescript",
				"jsdoc",
				"c",
				"go",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
			})
		end
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		after = "nvim-treesitter",
		config = function()
			require('treesitter-context').setup({
				enable = true,
				multiwindow = true,
				max_lines = 0,
				min_window_height = 0,
				line_numbers = true,
				multiline_threshold = 20,
				trim_scope = 'outer',
				mode = 'cursor',
				separator = nil,
				zindex = 20,
				on_attach = nil,
			})
		end
	}
}
