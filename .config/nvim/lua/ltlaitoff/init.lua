require("ltlaitoff.set")
require("ltlaitoff.init_lazy")
require("ltlaitoff.langmap")

-- local augroup = vim.api.nvim_create_augroup
-- local ltlaitoffGroup = augroup('ltlaitoff', {})
--
-- local autocmd = vim.api.nvim_create_autocmd
-- local yank_group = augroup('HighlightYank', {})

-- function R(name)
--     require("plenary.reload").reload_module(name)
-- end

-- vim.filetype.add({
--     extension = {
--         templ = 'templ',
--     }
-- })
--
-- autocmd('TextYankPost', {
--     group = yank_group,
--     pattern = '*',
--     callback = function()
--         vim.highlight.on_yank({
--             higroup = 'IncSearch',
--             timeout = 40,
--         })
--     end,
-- })
--
-- autocmd({"BufWritePre"}, {
--     group = ltlaitoffGroup,
--     pattern = "*",
--     command = [[%s/\s\+$//e]],
-- })
