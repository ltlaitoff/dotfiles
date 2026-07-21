return {
	-- Comment plugin for jsx/tsx
	'JoosepAlviste/nvim-ts-context-commentstring',

	-- Show values of rem's in px
	{
		'jsongerber/nvim-px-to-rem',
		config = true,
	},

	-- Prettify ts_ls errors
	{
		"davidosomething/format-ts-errors.nvim",
		config = function()
			require("format-ts-errors").setup({
				add_markdown = true, -- wrap output with markdown ```ts ``` markers
				start_indent_level = 0, -- initial indent
			})
		end,
	}
}
