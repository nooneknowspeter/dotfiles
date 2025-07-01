local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })

map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })

map("n", "<leader>x", "<cmd>Bdelete<CR>", { desc = "Delete Buffer" })
