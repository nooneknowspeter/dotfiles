return {
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require("ibl").setup()
    end
  }
}
