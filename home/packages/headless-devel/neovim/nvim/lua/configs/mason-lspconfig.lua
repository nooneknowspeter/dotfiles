require("mason").setup()
require("mason-lspconfig").setup()
local capabilities = require("blink.cmp").get_lsp_capabilities()

require("mason-lspconfig").setup_handlers({
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
	end,
})
