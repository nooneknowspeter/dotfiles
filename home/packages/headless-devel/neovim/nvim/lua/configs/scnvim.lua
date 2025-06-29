local scnvim = require "scnvim"

scnvim.setup {
  editor = {
    highlight = {
      color = "IncSearch",

    },
  },
  postwin = {
    float = {
      enabled = true,
    },
  },
  snippet = {
    engine = {
      name = "luasnip",
    },
  },
}
