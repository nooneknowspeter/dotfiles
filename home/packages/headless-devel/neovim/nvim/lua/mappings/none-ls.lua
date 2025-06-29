local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>fd", vim.lsp.buf.format, { desc = "Format Document" })
