return {
	"ravibrock/spellwarn.nvim",
	event = "VeryLazy",
	config = function ()
		vim.opt.spell = true
		vim.opt.spelllang = { "en" }
	end,
}
