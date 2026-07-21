local cmp_lsp = require("cmp_nvim_lsp")
local capabilities = vim.tbl_deep_extend(
	"force",
	{},
	vim.lsp.protocol.make_client_capabilities(),
	cmp_lsp.default_capabilities()
)

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = { version = "Lua 5.1" },
			diagnostics = {
				globals = { "vim", "it", "describe", "before_each", "after_each" },
			}
		}
	}
})
vim.lsp.enable("lua_ls")
