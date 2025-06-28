local wezterm = require("wezterm")

local config = {}

-- color_scheme
config.color_scheme = "Monokai Remastered"

-- font
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 12.0
-- prevent window from changing in size while +/- font size
config.adjust_window_size_when_changing_font_size = false

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
