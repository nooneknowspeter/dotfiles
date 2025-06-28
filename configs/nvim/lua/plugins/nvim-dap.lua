return {
	-- debugging; nvim dap, dap ui
	{
		"rcarriga/nvim-dap-ui",
		enabled = true,
		event = "VeryLazy",
		dependencies = {
			{ "mason-org/mason.nvim", version = "1.11.0" },
			"mfussenegger/nvim-dap",
			"theHamsta/nvim-dap-virtual-text",
			-- { "nooneknowspeter/mason-nvim-dap.nvim", branch = "feat/additional-js-dap-configs" },
			"jay-babu/mason-nvim-dap.nvim",
			"nvim-neotest/nvim-nio",

			"jbyuki/one-small-step-for-vimkind",
		},
		config = function()
			require("configs.nvim-dap")
		end,
	},
}
