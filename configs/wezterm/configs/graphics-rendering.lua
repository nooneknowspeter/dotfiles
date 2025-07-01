local wezterm = require("wezterm")

local config = {}

-- graphics and rendering
config.front_end = "OpenGL" -- graphics api
config.max_fps = 165
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 600 -- in ms
config.term = "xterm-256color"
config.prefer_egl = true

