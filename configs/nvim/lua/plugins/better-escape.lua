return {
	-- better escape; escape using key combo (currently set to jk)
	{
		"max397574/better-escape.nvim",
		enabled = true,
		config = function()
			-- lua, default settings
			require("better_escape").setup({
				timeout = vim.o.timeoutlen,
				default_mappings = false,
				mappings = {
					i = {
						j = {
							-- These can all also be functions
							k = "<Esc>",
							j = "<Esc>",
						},
					},
					c = {
						j = {
							k = "<Esc>",
							j = "<Esc>",
						},
					},
					v = {
						j = {
							k = "<Esc>",
						},
					},
					t = {
						j = {
							k = "<C-\\><C-n>",
						},
					},
					s = {
						j = {
							k = "<Esc>",
							j = "<Esc>",
						},
					},
				},
			})
		end,
		lazy = false,
	},
}
