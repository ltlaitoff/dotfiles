return {
	-- Color scheme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			term_colors = true,
			transparent_background = true,
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				treesitter = true,
				harpoon = true,
				telescope = true,
				mason = true,
				noice = true,
				notify = true,
				which_key = true,
				fidget = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			-- vim.cmd.colorscheme("catppuccin-macchiato")
			vim.cmd.colorscheme("catppuccin-latte")
		end,
	},

	-- Line with vim buffers
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},

		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup()
		end
	},

	-- Line with status/git/etc
	{
		'nvim-lualine/lualine.nvim',

		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},

		-- opts = function(_, opts)
		-- 	local trouble = require("trouble")
		-- 	local symbols = trouble.statusline({
		-- 		mode = "lsp_document_symbols",
		-- 		groups = {},
		-- 		title = false,
		-- 		filter = { range = true },
		-- 		format = "{kind_icon}{symbol.name:Normal}",
		-- 		-- The following line is needed to fix the background color
		-- 		-- Set it to the lualine section you want to use
		-- 		hl_group = "lualine_c_normal",
		-- 	})
		--
		-- 	-- table.insert(opts.sections.lualine_c, {
		-- 	-- 	symbols.get,
		-- 	-- 	cond = symbols.has,
		-- 	-- })
		-- end,

		config = function()
			require('lualine').setup({
				extensions = { 'trouble', 'quickfix' }
			})
		end,
	}

}
