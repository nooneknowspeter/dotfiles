local map = vim.keymap.set
local del = vim.keymap.del
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "neo-tree toggle window" })

map("n", "<leader>bf", "<cmd>Neotree buffers reveal float<CR>", { desc = "neo-tree reveal float" })
