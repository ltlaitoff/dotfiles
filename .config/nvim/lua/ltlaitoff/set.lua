vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false 

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- vim.opt.guifont = "MonoLisa Nerd Font Mono:h16"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.guifont = { "Hack Nerd Font:h14", "monospace", ":h14" }
-- vim.opt.guifont = { "MonoLisa, monospace", ":h16" }
--
vim.opt.conceallevel = 2
