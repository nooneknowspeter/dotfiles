require("mason").setup()
require("mason-null-ls").setup({
  ensure_installed = {
    "stylua",
  },
  automatic_installation = false,
  methods = {
    diagnostics = true,
    formatting = true,
    code_actions = true,
    completion = true,
    hover = true,
  },
  handlers = {},
  debug = true,
})

-- format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = "*", -- Apply to all file types
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
