return {
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
      return require("configs.telescope")
    end,
  },

  -- telescope ui select
  {
    "nvim-telescope/telescope-ui-select.nvim",
    enabled = true,
    event = "VeryLazy",

    config = function()
      require("configs.telescope-ui-select")
    end,
  },

  -- telescope themes
  {
    "andrew-george/telescope-themes",
    enabled = true,
    config = function()
      require("configs.telescope-themes")
    end,
  },

  -- telescope media files
  {
    "nvim-telescope/telescope-media-files.nvim",
    enabled = true,
    config = function()
      require("configs.telescope-media-files")
    end
  },
}
