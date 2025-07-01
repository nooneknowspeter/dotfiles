local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>tt", "<cmd>TransparentToggle<CR>", { desc = "Toggle Transparency" })
