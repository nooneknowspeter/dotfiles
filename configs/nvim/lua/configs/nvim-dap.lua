local mason = require "mason"
local mason_dap = require "mason-nvim-dap"
local dap = require "dap"
local dapui = require "dapui"
-- local mason_registry = require "mason-registry"

mason.setup()

-- mason nvim dap
mason_dap.setup {
  automatic_installation = true,
  handlers = {
    function(config)
      -- default handler for all sources without a specific handler
      require("mason-nvim-dap").default_setup(config)
    end,
  },
}

for _, language in ipairs { "typescript", "javascript" } do

  require("dap").configurations[language] = {
    ..., -- see below
  }
end

-- one small step for mankind
dap.adapters.nlua = function(callback, conf)
  local adapter = {
    type = "server",
    host = conf.host or "127.0.0.1",
    port = conf.port or 8086,
  }
  if conf.start_neovim then
    local dap_run = dap.run
    dap.run = function(c)
      adapter.port = c.port

      adapter.host = c.host
    end

    require("osv").run_this()
    dap.run = dap_run

  end

  callback(adapter)

end
dap.configurations.lua = {
  {
    type = "nlua",
    request = "attach",
    name = "Run this file",
    start_neovim = {},
  },
  {
    type = "nlua",
    request = "attach",
    name = "Attach to running Neovim instance (port = 8086)",
    port = 8086,
  },
}

-- dap ui setup

dapui.setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()

  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()

end

-- breakpoint icons
vim.fn.sign_define("DapBreakpoint", { text = "👾" })

vim.fn.sign_define("DapStopped", { text = "💸" })
