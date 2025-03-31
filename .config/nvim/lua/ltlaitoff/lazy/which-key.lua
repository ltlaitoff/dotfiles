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
    -- As an example, we will create the following mappings:
    --  * <leader>ff find files
    --  * <leader>fr show recent files
    --  * <leader>fb Foobar
    -- we'll document:
    --  * <leader>fn new file
    --  * <leader>fe edit file
    -- and hide <leader>1

		wk.register({
			v = {
			name = "Vim",
				f = {"<cmd>Prettier<cr>", "Format via prettier"}
			},
			o = {
				f = {"<cmd>ObsidianFollowLink<CR>", "Follow obsidian link"}
			},
			f = {
				name = "Telescope",
				f = {"<cmd>Telescope find_files<cr>", "Find files"},
				g = {"<cmd>Telescope live_grep<cr>", "Find grep"},
				b = {"<cmd>Telescope buffers<cr>", "Find buffers"},
				t = {"<cmd>Telescope git_status<cr>", "Git status"},
			},
      b = {
        name = "Buffers",
        p = { "<cmd>:e#<cr>", "Go to previous buffer" },
        j = { "<cmd>BufferLinePick<cr>", "Jump" },
        f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
        b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
        n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
        W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
        -- w = { "<cmd>BufferWipeout<cr>", "Wipeout" }, -- TODO: implement this for bufferline
        e = {
          "<cmd>BufferLinePickClose<cr>",
          "Pick which buffer to close",
        },
        h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
        l = {
          "<cmd>BufferLineCloseRight<cr>",
          "Close all to the right",
        },
        D = {
          "<cmd>BufferLineSortByDirectory<cr>",
          "Sort by directory",
        },
        L = {
          "<cmd>BufferLineSortByExtension<cr>",
          "Sort by language",
        },
        c = {
          "<cmd>:bd<cr>",
          "Close current buffer"
        }
      },
			t = {
				name = "Tree",
				f = { "<cmd>NvimTreeFindFile<cr>", "Show current file in tree"},
				t = { "<cmd>NvimTreeToggle<cr>", "Toggle tree"}
			}
    }, { prefix = "<leader>" })
  end 

}
