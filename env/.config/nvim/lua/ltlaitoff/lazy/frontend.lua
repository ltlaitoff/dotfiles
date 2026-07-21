return {
	-- Comment plugin for jsx/tsx
	-- 'JoosepAlviste/nvim-ts-context-commentstring',

	-- Eslint
	-- {
	-- 	'MunifTanjim/eslint.nvim',
	--
	-- 	dependencies = {
	-- 		'nvimtools/none-ls.nvim',
	-- 		'neovim/nvim-lspconfig',
	-- 	},
	--
	-- 	opts = {
	-- 		bin = 'eslint_d', -- or `eslint_d`
	-- 		code_actions = {
	-- 			enable = true,
	-- 			apply_on_save = {
	-- 				enable = true,
	-- 				types = { "directive", "problem", "suggestion", "layout" },
	-- 			},
	-- 			disable_rule_comment = {
	-- 				enable = true,
	-- 				location = "separate_line", -- or `same_line`
	-- 			},
	-- 		},
	-- 		diagnostics = {
	-- 			enable = true,
	-- 			report_unused_disable_directives = false,
	-- 			run_on = "type", -- or `save`
	-- 		},
	-- 	}
	-- },

	-- Prettier
	-- {
	-- 	'MunifTanjim/prettier.nvim',
	--
	-- 	enable = false,
	-- 	dependencies = {
	-- 		-- 'neovim/nvim-lspconfig',
	-- 		'nvimtools/none-ls.nvim',
	-- 	},
	-- 	opts = {
	-- 		bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
	-- 		filetypes = {
	-- 			"css",
	-- 			"graphql",
	-- 			"html",
	-- 			"javascript",
	-- 			"javascriptreact",
	-- 			"json",
	-- 			"less",
	-- 			"markdown",
	-- 			"scss",
	-- 			"typescript",
	-- 			"typescriptreact",
	-- 			"yaml",
	-- 		},
	--
	-- 		cli_options = {
	-- 			-- https://prettier.io/docs/en/cli.html#--config-precedence
	-- 			config_precedence = "file-override", -- or "cli-override" or "file-override"
	-- 		},
	-- 	},
	-- },

	-- Px to rem
	{
		'jsongerber/nvim-px-to-rem',
		opts = {},
	},

	-- Tailwind
	-- {
	-- 	"luckasRanarison/tailwind-tools.nvim",
	-- 	name = "tailwind-tools",
	-- 	build = ":UpdateRemotePlugins",
	-- 	dependencies = {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		"nvim-telescope/telescope.nvim", -- optional
	-- 	},
	-- 	opts = {}
	-- },

	-- Emmet
	-- Q: Do I need this at all? I think LSP can handle emmet
	"olrtg/nvim-emmet"
}
