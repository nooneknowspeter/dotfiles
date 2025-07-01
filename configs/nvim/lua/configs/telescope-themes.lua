-- get builtin schemes list
local builtin_schemes = require("telescope._extensions.themes").builtin_schemes

require("telescope").setup({
	extensions = {
		themes = {
			-- you can add regular telescope config
			-- that you want to apply on this picker only
			layout_config = {
				horizontal = {
					width = 0.8,
					height = 0.7,
				},
			},

			-- extension specific config

			-- (boolean) -> show/hide previewer window
			enable_previewer = true,

			-- (boolean) -> enable/disable live preview
			enable_live_preview = true,

			ignore = {},

			-- all builtin themes are ignored by default
			-- (list) -> provide table of theme names to overwrite builtins list

			-- ignore = { "default", "desert", "elflord", "habamax" },
			-- OR
			-- extend the required `builtin_schemes` list to ignore other
			-- schemes in addition to builtin schemes
			-- ignore = vim.list_extend(builtin_schemes, { "embark" }),

			-- (table)

			-- (boolean) ignore -> toggle ignore light themes
			-- (list) keywords -> list of keywords that would identify as light theme
			-- light_themes = {
			-- 	ignore = true,
			--
			-- 	keywords = { "light", "day", "frappe" },
			-- },

			-- (table)
			-- (boolean) ignore -> toggle ignore dark themes
			-- (list) keywords -> list of keywords that would identify as dark theme
			-- dark_themes = {
			-- 	ignore = false,
			--
			-- 	keywords = { "dark", "night", "black" },
			-- },

			persist = {
				-- enable persisting last theme choice
				enabled = true,
			},

			mappings = {
				-- for people used to other mappings
				down = "<C-n>",
				up = "<C-p>",
				accept = "<C-y>",
			},
		},
	},
})
