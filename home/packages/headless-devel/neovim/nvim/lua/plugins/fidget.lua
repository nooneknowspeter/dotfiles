return {
  -- fidget
  {
    "j-hui/fidget.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = function()
      require "configs.fidget"
    end,
  },
}
