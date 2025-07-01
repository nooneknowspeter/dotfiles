return {
  -- nvim surround
  {
    "kylechui/nvim-surround",
    enabled = true,
    version = "*", -- use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require "configs.nvim-surround"
    end,
  },
}
