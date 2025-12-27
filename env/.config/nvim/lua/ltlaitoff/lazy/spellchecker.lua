return {
	"ravibrock/spellwarn.nvim",
	event = "VeryLazy",
	enabled=false,
	config = function ()
		vim.opt.spell = true
		vim.opt.spelllang = { "en" }
	end,
}
