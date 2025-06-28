return {
	{
		"s1n7ax/nvim-window-picker",
		enabled = true,
		name = "window-picker",
		event = "VeryLazy",
		version = "2.*",
		config = function()
			require("configs.nvim-window-picker")
		end,
	},
}
