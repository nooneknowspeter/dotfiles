local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>tvn", ":TestNearest<CR>", {})

map("n", "<leader>tvf", ":TestFile<CR>", {})

map("n", "<leader>tvs", ":TestSuite<CR>", {})

map("n", "<leader>tvl", ":TestLast<CR>", {})

map("n", "<leader>tvv", ":TestVisit<CR>", {})

vim.cmd("let test#strategy = 'vimux'")
