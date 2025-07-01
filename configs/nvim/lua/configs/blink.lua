return {
  -- 'default' for mappings similar to built-in completion
  -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
  -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
  -- See the full "keymap" documentation for information on defining your own keymap.
  keymap = {
    preset = "default",
    ["<S-k>"] = { "scroll_documentation_up", "fallback" },
    ["<S-j>"] = { "scroll_documentation_down", "fallback" },
  },

  fuzzy = { implementation = "prefer_rust" },

  completion = {
    list = {
      selection = {
        -- When `true`, will automatically select the first item in the completion list
        preselect = true,
        -- When `true`, inserts the completion item automatically when selecting it
        -- You may want to bind a key to the `cancel` command (default <C-e>) when using this option,
        -- which will both undo the selection and hide the completion menu
        auto_insert = false,
      },
    },
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
    menu = {
      border = "rounded",
      winblend = 5,
      scrollbar = true,
      draw = {
        -- We don't need label_description now because label and label_description are already
        -- combined together in label by colorful-menu.nvim.
        columns = { { "kind_icon" }, { "label", gap = 1 } },
        components = {
          label = {
            text = function(ctx)
              return require("colorful-menu").blink_components_text(ctx)
            end,
            highlight = function(ctx)
              return require("colorful-menu").blink_components_highlight(ctx)
            end,
          },
        },
      },
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
      window = {
        border = "rounded",
        winblend = 5,
        scrollbar = true,
      },
    },
    ghost_text = {
      enabled = true,
    },
  },
  -- Experimental signature help support
  signature = {
    enabled = true,
    window = {
      border = "rounded",
      winblend = 5,
      scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
    },
  },
  snippets = {
    preset = "luasnip",
  },
  sources = {
    -- adding any nvim-cmp sources here will enable them
    -- with blink.compat
    -- remember to enable your providers here
    default = { "lazydev", "lsp", "path", "snippets", "buffer", "dadbod", "ripgrep", "dictionary" },
    providers = {
      -- other sources
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        -- make lazydev completions top priority (see `:h blink.cmp`)
        score_offset = 100,
      },
      ripgrep = {
        module = "blink-cmp-rg",
        name = "Ripgrep",
        -- options below are optional, these are the default values
        opts = {
          -- `min_keyword_length` only determines whether to show completion items in the menu,
          -- not whether to trigger a search. And we only has one chance to search.
          prefix_min_len = 3,
          get_command = function(_, prefix)
            return {
              "rg",
              "--no-config",
              "--json",
              "--word-regexp",
              "--ignore-case",
              "--",
              prefix .. "[\\w_-]+",
              vim.fs.root(0, ".git") or vim.fn.getcwd(),
            }
          end,
          get_prefix = function(context)
            return context.line:sub(1, context.cursor[2]):match("[%w_-]+$") or ""
          end,
        },
      },
      dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
      dictionary = {
        module = "blink-cmp-dictionary",
        name = "Dict",
        score_offset = 20, -- the higher the number, the higher the priority
        -- https://github.com/Kaiser-Yang/blink-cmp-dictionary/issues/2
        enabled = true,
        max_items = 8,
        min_keyword_length = 3,
        opts = {
          -- -- The dictionary by default now uses fzf, make sure to have it
          -- -- installed
          -- -- https://github.com/Kaiser-Yang/blink-cmp-dictionary/issues/2
          --
          -- Do not specify a file, just the path, and in the path you need to
          -- have your .txt files
          dictionary_directories = { vim.fn.expand("~/github/dotfiles-latest/dictionaries") },
          -- Notice I'm also adding the words I add to the spell dictionary
          dictionary_files = {
            vim.fn.expand("~/github/dotfiles-latest/neovim/neobean/spell/en.utf-8.add"),
            vim.fn.expand("~/github/dotfiles-latest/neovim/neobean/spell/es.utf-8.add"),
          },
          -- --  NOTE: To disable the definitions uncomment this section below
          -- separate_output = function(output)
          --   local items = {}
          --   for line in output:gmatch("[^\r\n]+") do
          --     table.insert(items, {
          --       label = line,
          --       insert_text = line,
          --       documentation = nil,
          --     })
          --   end
          --   return items
          -- end,
        },
      },
      -- fittencode = {
      --   name = "fittencode",
      --   module = "fittencode.sources.blink",
      -- },
    },
  },

  appearance = {
    highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
    use_nvim_cmp_as_default = false,
    nerd_font_variant = "mono",
    -- kind_icons = {},
  },
}
