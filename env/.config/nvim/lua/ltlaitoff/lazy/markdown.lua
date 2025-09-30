return {
	'MeanderingProgrammer/render-markdown.nvim',
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons

	config = function()
		require("render-markdown").setup({
			-- enable conceal rendering in comments too
			file_types = { "markdown", "typescript", "javascript", "javascriptreact", "typescriptreact" },

			-- important: recognize JSDoc
			render_modes = {
				-- Normal markdown
				markdown = true,
				-- Comments in js/ts
				comments = true,
			},

			-- optional: conceal settings
			heading = { enabled = true }, -- nice headers
			bullet = { enabled = true }, -- replace "-" with •
			code = { enabled = true }, -- render fenced code
			injections = {
				-- Out of the box language injections for known filetypes that allow markdown to be interpreted
				-- in specified locations, see :h treesitter-language-injections.
				-- Set enabled to false in order to disable.

				gitcommit = {
					enabled = true,
					query = [[
                ((message) @injection.content
                    (#set! injection.combined)
                    (#set! injection.include-children)
                    (#set! injection.language "markdown"))
            ]],
				},
				--
				-- typescript = {
				-- 	enabled = true,
				-- 	query = [[
				-- 		((comment) @injection.content
				-- 		(#match? @injection.content "^\\s*/\\*\\*")
				-- 		(#set! injection.combined)
				-- 		(#set! injection.include-children)
				-- 		(#set! injection.language "markdown"))
				-- 	]],
				-- },
			},

			document = {
				enabled = true,
				render_modes = false,
				conceal = {
					enabled = true,
					char_patterns = {
						-- { pattern = "[ \t]*\\*[ \t]*", replace = "" },
						-- { pattern = "/\\*\\*",         replace = "" },
						-- { pattern = "\\s*\\*\\s*",     replace = "" },
						-- { pattern = "\\*/$",           replace = "" },
					},
					line_patterns = {},
				},
			},

			win_options = {
				conceallevel = { default = vim.o.conceallevel, rendered = 3 },
				concealcursor = { default = vim.o.concealcursor, rendered = "nc" },
			},

			anti_conceal = {
				enabled = false,
			},

		})

		vim.opt.conceallevel = 3
		vim.opt.concealcursor = "nc"
	end
}
