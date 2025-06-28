return {
	{
		"mason-org/mason.nvim",
		enabled = true,
		version = "1.11.0",
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		opts = function()
			return require("configs.mason")
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim", -- main repo
		-- "nooneknowspeter/mason-lspconfig.nvim", -- forked repo (testing)
		-- branch = "feat/fountain-lsp-server",
		enabled = true,
		version = "1.32.0",
		dependencies = { { "mason-org/mason.nvim", version = "1.11.0" } },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("configs.mason-lspconfig")
		end,
	},

	{
		"neovim/nvim-lspconfig", -- main repo
		-- 	"nooneknowspeter/nvim-lspconfig", -- forked repo (testing)
		-- 	branch = "feat/fountain-lsp-server",
		enabled = true,
		dependencies = { "saghen/blink.cmp" },
		lazy = false,
		-- config = function()
		--   require("configs.nvim-lspconfig")
		-- end,
	},
}
