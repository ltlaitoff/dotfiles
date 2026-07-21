return {
	'nvimtools/none-ls.nvim',

	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					-- format on save
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
							-- vim.lsp.buf.formatting_sync()
							vim.lsp.buf.format({ bufnr = bufnr, async = false })
						end,
						desc = "[lsp] format on save",
					})

					vim.keymap.set("n", "<Leader>f",
						function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
						{ buffer = bufnr, desc = "[lsp] format" }
					)
				end

				if client.supports_method("textDocument/rangeFormatting") then
					vim.keymap.set("x", "<Leader>f", function()
						vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
					end, { buffer = bufnr, desc = "[lsp] format" })
				end
			end,
			sources = {
				-- null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.completion.spell,
				-- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
			},
		})
	end,
}
