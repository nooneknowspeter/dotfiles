return {
  -- TODO comments
  {
    "folke/todo-comments.nvim",
    enabled = true,
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = require("configs.todo-comments"),
  },
}
