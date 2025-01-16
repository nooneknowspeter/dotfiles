local wezterm = require("wezterm")

local config = {}

-- graphics and rendering
-- graphics api
config.front_end = "OpenGL"
config.max_fps = 165
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 600 -- in ms
config.term = "xterm-256color"
config.prefer_egl = true

-- color_scheme
config.color_scheme = "Cloud (terminal.sexy)"

-- font
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14.0

-- window_background_opacity
config.window_background_opacity = 0.9

-- window_padding
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- remove title bar and enable resize window
config.window_decorations = "NONE | RESIZE"

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- functions
local act = wezterm.action

-- toggling opacity
local toggle_opacity = wezterm.action_callback(function(window, _)
  local overrides = window:get_config_overrides() or {}
  if overrides.window_background_opacity == 1.0 then
    overrides.window_background_opacity = 0.9
  else
    overrides.window_background_opacity = 1.0
  end
  window:set_config_overrides(overrides)
end)

-- keybindings
config.keys = {

  -- split pane horizontally
  {
    key = "v",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitPane({
      direction = "Right",
      size = { Percent = 50 },
    }),
  },

  -- split pane vertically
  {
    key = "s",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitPane({
      direction = "Down",
      size = { Percent = 50 },
    }),
  },

  -- resize pane
  {
    key = "H",
    mods = "CTRL|SHIFT|ALT",
    action = act.AdjustPaneSize({ "Left", 5 }),
  },
  {
    key = "J",
    mods = "CTRL|SHIFT|ALT",
    action = act.AdjustPaneSize({ "Down", 5 }),
  },
  {
    key = "K",
    mods = "CTRL|SHIFT|ALT",
    action = act.AdjustPaneSize({ "Up", 5 }),
  },
  {
    key = "L",
    mods = "CTRL|SHIFT|ALT",
    action = act.AdjustPaneSize({ "Right", 5 }),
  },

  -- select pane
  -- options
  { key = "9", mods = "CTRL", action = act.PaneSelect },

  -- select with hjkl, LDUR
  {
    key = "h",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },
  {
    key = "j",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },
  {
    key = "k",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },
  {
    key = "l",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },

  -- wezterm debugging
  { key = "L", mods = "CTRL", action = act.ShowDebugOverlay },

  -- toggle_opacity
  {
    key = "O",
    mods = "CTRL|ALT",
    action = toggle_opacity,
  },

  -- paste with control+v instead of shift+insert
  {
    key = "v",
    mods = "CTRL",
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = "v",
    mods = "CTRL",
    action = act.PasteFrom("Clipboard"),
  },

  -- command palette window activation
  {
    key = "P",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateCommandPalette,
  },
}

return config
