local wezterm = require("wezterm")

local config = {}

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
