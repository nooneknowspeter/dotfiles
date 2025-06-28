return {
  {
    'akinsho/bufferline.nvim',
    enabled = true,
    event = "VeryLazy",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {}
    end
  },
}
