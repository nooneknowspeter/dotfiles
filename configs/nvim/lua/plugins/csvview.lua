return {
  -- csv view
  {
    "hat0uma/csvview.nvim",
    enabled = true,
    event = "VeryLazy",

    config = function()
      require("csvview").setup()
    end,

  },
}
