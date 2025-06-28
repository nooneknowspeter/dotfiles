require 'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "jpg", "mp4", "webm", "pdf", "webp", "jpg", "jpeg" },
      -- find command (defaults to `fd`)
      find_cmd = "rg"
    }
  },
}

require('telescope').load_extension('media_files')
