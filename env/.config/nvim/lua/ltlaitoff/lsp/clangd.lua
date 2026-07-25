-- Leaving this empty will use the default options from the
-- `nvim-lspconfig` plugin. See |:h vim.lsp.Config| for all
-- available fields, and see below for more customization.
local config = {}

vim.lsp.config('clangd', config)
vim.lsp.enable('clangd')
