-- For Mason v2
local vue_language_server_path = vim.fn.expand '$MASON/packages' ..
	'/vue-language-server' .. '/node_modules/@vue/language-server'
-- or even
-- local vue_language_server_path = vim.fn.stdpath('data') .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vue_language_server_path,
	languages = { 'vue' },
	configNamespace = 'typescript',
}

-- NOTE: vtsls is fully compatible with ts_ls, so we can replace one with other
-- For not I wanna try vtsls as my main lsp, we'll see

---@module "vtsls"
---@type lspconfig.settings.vtsls
local config = {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
				implicitProjectConfiguration = {
					checkJs = true
				},
			},
		},
	},
	filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
}
vim.lsp.config('vtsls', config)

-- vim.lsp.config("ts_ls", {
-- 	settings = {
-- 		implicitProjectConfiguration = {
-- 			checkJs = true
-- 		},
-- 	},
-- 	-- other options
-- 	-- handlers = {
-- 	-- 	['textDocument/definition'] = function(err, result, method, ...)
-- 	-- 		if vim.tbl_islist(result) and #result > 1 then
-- 	-- 			local filtered_result = filter(result, filterReactDTS)
-- 	-- 			return vim.lsp.handlers['textDocument/definition'](err, filtered_result, method, ...)
-- 	-- 		end
-- 	--
-- 	-- 		vim.lsp.handlers['textDocument/definition'](err, result, method, ...)
-- 	-- 	end
-- 	-- }
-- })
-- vim.lsp.enable("ts_ls")
