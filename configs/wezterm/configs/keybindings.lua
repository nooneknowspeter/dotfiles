local wezterm = require("wezterm")


-- keybindings
return {

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
		key = "U",
		mods = "CTRL|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "I",
		mods = "CTRL|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "O",
		mods = "CTRL|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "P",
		mods = "CTRL|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},

	-- select pane
	-- options
	{ key = "9", mods = "CTRL", action = act.PaneSelect },

	-- select with hjkl, LDUR
	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
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
