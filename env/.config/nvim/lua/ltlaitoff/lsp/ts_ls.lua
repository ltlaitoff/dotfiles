vim.lsp.config("ts_ls", {
	settings = {
		implicitProjectConfiguration = {
			checkJs = true
		},
	},
	-- other options
	-- handlers = {
	-- 	['textDocument/definition'] = function(err, result, method, ...)
	-- 		if vim.tbl_islist(result) and #result > 1 then
	-- 			local filtered_result = filter(result, filterReactDTS)
	-- 			return vim.lsp.handlers['textDocument/definition'](err, filtered_result, method, ...)
	-- 		end
	--
	-- 		vim.lsp.handlers['textDocument/definition'](err, result, method, ...)
	-- 	end
	-- }
})
vim.lsp.enable("ts_ls")
