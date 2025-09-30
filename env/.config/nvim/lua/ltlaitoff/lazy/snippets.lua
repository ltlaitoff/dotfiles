return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",

	dependencies = {
		"rafamadriz/friendly-snippets",
		-- "mlaursen/vim-react-snippets",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets" } })

		-- require("vim-react-snippets").lazy_load()
		--
		-- local reactSnippets = require("vim-react-snippets.config")
		--
		-- -- if you do not want to wrap all props in `Readonly<T>`
		-- reactSnippets.readonly_props = false
		--
		-- -- if you want to use vitest instead of `@jest/globals`
		-- reactSnippets.test_framework = "vitest"
		--
		-- -- if you want to use a custom test renderer path instead of
		-- -- `@testing-library/react`
		-- reactSnippets.test_renderer_path = "@/test-utils"
	end,
}

