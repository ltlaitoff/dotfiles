return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },

	-- Most used:
	-- TODO: Todo comment
	-- FIXME: Fix me comment
	-- NOTE: Some notes
	-- Q: Question
	-- DEV: Local comment, should not be in PR

	-- Others:
	-- CRITICAL: Critical error
	-- XXX: Attention
	-- HACK: Some hack
	-- TEST: Test something
	-- PERF: Optimize me
	-- SECURITY: Some security comment
	-- DEPRECATED: Deprecated functional

	opts = {
		signs = true,    -- show icons in the signs column
		sign_priority = 8, -- sign priority
		-- keywords recognized as todo comments
		keywords = {
			TODO = { icon = "", color = "info" },
			FIX = {
				icon = "",
				color = "#f87171",
				alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
			},
			NOTE = { icon = "", color = "hint", alt = { "INFO" } },
			QUESTION = { icon = "", color = "#eab308", alt = { "Q" } },
			HACK = { icon = "", color = "#fca5a5" },
			CRITICAL = { icon = "", color = "#dc2626" },
			WARN = { icon = "", color = "warning", alt = { "WARNING" } },
			XXX = { icon = "", color = "#22c55e" },
			DEV = { icon = "", color = "#e879f9", alt = { "D" } },
			SECURITY = { icon = "󰒃", color = "#c026d3", alt = { "SEC" } },
			PERF = { icon = "", color = "#14b8a6", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
			TEST = { icon = "", color = "#fbbf24", alt = { "TESTING", "PASSED", "FAILED" } },
			DEPRECATED = { icon = "󰂭", color = "#64748b"},
		},
		colors = {
			error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
			warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
			info = { "DiagnosticInfo", "#2563EB" },
			hint = { "DiagnosticHint", "#10B981" },
			default = { "Identifier", "#7C3AED" },
			test = { "Identifier", "#FF00FF" },
		},
		gui_style = {
			fg = "NONE",       -- The gui style to use for the fg highlight group.
			bg = "BOLD",       -- The gui style to use for the bg highlight group.
		},
		merge_keywords = true, -- when true, custom keywords will be merged with the defaults
		-- highlighting of the line containing the todo comment
		-- * before: highlights before the keyword (typically comment characters)
		-- * keyword: highlights of the keyword
		-- * after: highlights after the keyword (todo text)
		highlight = {
			multiline = true,      -- enable multine todo comments
			multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
			multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
			before = "",           -- "fg" or "bg" or empty
			keyword = "wide",      -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
			after = "fg",          -- "fg" or "bg" or empty
			-- pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)

			-- From https://github.com/folke/todo-comments.nvim/issues/10#issuecomment-2446101986
			pattern = [[.*<((KEYWORDS)%(\(.{-1,}\))?):]],

			comments_only = true, -- uses treesitter to match keywords in comments only
			max_line_len = 400, -- ignore lines longer than this
			exclude = {},      -- list of file types to exclude highlighting
		},
		-- list of named colors where we try to extract the guifg from the
		-- list of highlight groups or use the hex color if hl not found as a fallback
		search = {
			command = "rg",
			args = {
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
			},
			-- regex that will be used to match keywords.
			-- don't replace the (KEYWORDS) placeholder

			-- From https://github.com/folke/todo-comments.nvim/issues/10#issuecomment-2446101986
			pattern = [[\b(KEYWORDS)(\([^\)]*\))?:]]

			-- pattern = [[\b(KEYWORDS):]], -- ripgrep regex
			-- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
		}
	}
}
