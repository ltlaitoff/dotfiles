return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',

		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	-- builtin picker
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			pickers = {
				find_files = {
					hidden = true
				},
				live_grep = {
					additional_args = function(opts)
						return { "--hidden" }
					end
				},
			},
		})

		-- TODO: git_files search?
	end,
}
