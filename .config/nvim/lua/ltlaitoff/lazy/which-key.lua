return {
	"folke/which-key.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")

		wk.add({
			{
				-- Remaps
				{ "<leader>p",  "\"_dP",                     desc = "Pase without remove from vim", mode = "x" },
				{ "<leader>y",  "\"+y",                      desc = "",                             mode = { "v", "n" } },
				{ "<leader>Y",  "\"+Y",                      desc = "" },
				{ "<leader>d",  "\"_d",                      desc = "",                             mode = { "v", "n" } },
				{ "<C-c>",      "<Esc>",                     desc = "",                             mode = "i" },
				{ "<leader>pv", "<cmd>lua vim.cmd.Ex()<CR>", desc = "Go to folder" },
				{ "J",          "mzJ`z",                     desc = "" },
				{ "<C-d>",      "<C-d>zz",                   desc = "Screen down center" },
				{ "<C-u>",      "<C-u>zz",                   desc = "Screen up center" },
				{ "n",          "nzzzv",                     desc = "" },
				{ "N",          "Nzzzv",                     desc = "" },
				{ "<leader>k",  "<cmd>lnext<CR>zz",          desc = "" },
				{ "<leader>j",  "<cmd>lprev<CR>zz",          desc = "" },
				{ "J",          ":m '>+1<CR>gv=gv",          desc = "Move lines top",               mode = "v" },
				{ "K",          ":m '<-2<CR>gv=gv",          desc = "Move line bottom",             mode = "v" },
				{ "<C-k>",      "<C-w>k",                    desc = "Go to top screen" },
				{ "<C-j>",      "<C-w>j",                    desc = "Go to bottom screen" },
				{ "<C-h>",      "<C-w>h",                    desc = "Go to left screen" },
				{ "<C-l>",      "<C-w>l",                    desc = "Go to right screen" },
			},
			{
				-- My
				{ "<leader>mpx", "<cmd>:%s#\\v(\\d+)px#\\=printf(\"%g\",(submatch(1)/16.0)).\"rem\"#g<CR>", desc = "" },
			},
			{
				-- olrtg/nvim-emmet
				{ '<leader>xe', function() require('nvim-emmet').wrap_with_abbreviation() end, mode = { "n", "v" } }
			},
			{
				-- ThePrimeagen/harpoon
				{ "<leader>a", function() require("harpoon"):list():add() end,                                    desc = "Add to harpoon" },
				{ "<C-e>",     function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "" },
				-- { "<C-h>",     function() require("harpoon"):list():select(1) end,                                desc = "" },
				{ "<C-t>",     function() require("harpoon"):list():select(2) end,                                desc = "" },
				{ "<C-n>",     function() require("harpoon"):list():select(3) end,                                desc = "" },
				{ "<C-s>",     function() require("harpoon"):list():select(4) end,                                desc = "" },
				{ "<C-S-P>",   function() require("harpoon"):list():prev() end,                                   desc = "" },
				{ "<C-S-N>",   function() require("harpoon"):list():next() end,                                   desc = "" },
			},
			{
				-- mbbill/undotree
				{ '<leader>u', "<cmd>lua vim.cmd.UndotreeToggle()<CR>", desc = "Undo tree" },
			},
			{
				-- tpope/vim-fugitive
				{ "<leader>gs", "<cmd>lua vim.cmd.Git()<CR>", desc = "Git" },
			},
			{
				-- kevinhwang91/nvim-ufo
				{ "zR", function() require("ufo").openAllFolds() end,  desc = "Open all folds" },
				{ "zM", function() require("ufo").closeAllFolds() end, desc = "Close all folds" }
			},
			{
				{ "<leader>v",   group = "Vim" },
				{ "<leader>vf",  "<cmd>lua vim.lsp.buf.format()<CR>",           desc = "Format via LSP" },
				{ "<leader>vws", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", desc = "Workspace symbol" },
				{ "<leader>vd",  "<cmd>lua vim.diagnostic.open_float()<CR>",    desc = "Open float diagnostic" },
				{ "<leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>",      desc = "Code action" },
				{ "<leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>",       desc = "References" },
				{ "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>",           desc = "Rename" },
				{ "<leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>",   desc = "Signature help" },
				{ "gd",          "<cmd> lua vim.lsp.buf.definition()<CR>",      desc = "Definition" },
				{ "K",           "<cmd>lua vim.lsp.buf.hover()<CR>",            desc = "Hover" },
				{ "[d",          "<cmd>lua vim.diagnostic.goto_next()<CR>",     desc = "Diagnostic next" },
				{ "]d",          "<cmd>lua vim.diagnostic.goto_prev()<CR>",     desc = "Diagnostic prev" },
				{ "<C-h>",       "<cmd>lua vim.lsp.buf.signature_help()<CR>",   desc = "Signature help shortcut", mode = "i" }
			},
			{
				{ "<leader>o",  group = "Obsidian" },
				{ "<leader>of", "<cmd>ObsidianFollowLink<CR>", desc = "Follow obsidian link" },
			},
			{
				{ "<leader>f",  group = "Find" },
				-- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
				{ "<leader>ff", function() require("fff").toggle() end, desc = "Find files" },
				{ "<leader>fg", "<cmd>Telescope live_grep<cr>",         desc = "Find grep" },
				{ "<leader>fb", "<cmd>Telescope buffers<cr>",           desc = "Find buffers" },
				{ "<leader>ft", "<cmd>Telescope git_status<cr>",        desc = "Git status" },
			},
			{
				{ "<leader>b",  group = "Buffers" },
				{ "<leader>bp", "<cmd>:e#<cr>",                               desc = "Go to previous buffer" },
				{ "<leader>bj", "<cmd>BufferLinePick<cr>",                    desc = "Jump" },
				{ "<leader>bf", "<cmd>Telescope buffers previewer=false<cr>", desc = "Find" },
				{ "<leader>bb", "<cmd>BufferLineCyclePrev<cr>",               desc = "Previous" },
				{ "<leader>bn", "<cmd>BufferLineCycleNext<cr>",               desc = "Next" },
				{ "<leader>bW", "<cmd>noautocmd w<cr>",                       desc = "Save without formatting (noautocmd)" },
				{ "<leader>bw", "<cmd>BufferWipeout<cr>",                     desc = "Wipeout" }, -- TODO: implement this for bufferline
				{ "<leader>be", "<cmd>BufferLinePickClose<cr>",               desc = "Pick which buffer to close", },
				{ "<leader>bh", "<cmd>BufferLineCloseLeft<cr>",               desc = "Close all to the left" },
				{ "<leader>bl", "<cmd>BufferLineCloseRight<cr>",              desc = "Close all to the right", },
				{ "<leader>bD", "<cmd>BufferLineSortByDirectory<cr>",         desc = "Sort by directory", },
				{ "<leader>bL", "<cmd>BufferLineSortByExtension<cr>",         desc = "Sort by language", },
				{ "<leader>bc", "<cmd>:bd<cr>",                               desc = "Close current buffer" }
			},
			{
				{ "<leader>t",  group = "Tree" },
				{ "<leader>tf", "<cmd>NvimTreeFindFile<cr>", desc = "Show current file in tree" },
				{ "<leader>tt", "<cmd>NvimTreeToggle<cr>",   desc = "Toggle tree" }
			}
		})
	end

}
