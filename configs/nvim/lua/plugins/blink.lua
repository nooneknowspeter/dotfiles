return {
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = {
			"Kaiser-Yang/blink-cmp-dictionary",
			"rafamadriz/friendly-snippets",
			"niuiic/blink-cmp-rg.nvim",
			-- add blink.compat to dependencies
			{
				"saghen/blink.compat",
				optional = true, -- make optional so it's only enabled if any extras need it
				opts = {},
			},
			{
				"L3MON4D3/LuaSnip",
				lazy = true,
				dependencies = {
					{
						"rafamadriz/friendly-snippets",
						config = function()
							require("luasnip.loaders.from_vscode").lazy_load()
							require("luasnip.loaders.from_vscode").lazy_load({
								paths = { vim.fn.stdpath("config") .. "/snippets" },
							})
						end,
					},
				},
				opts = {
					history = true,
					delete_check_events = "TextChanged",
				},
			},
		},

		-- use a release tag to download pre-built binaries
		version = "*",
		-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = require("configs.blink"),
		opts_extend = {
			"sources.default",
		},
	},
}
