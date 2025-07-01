local wezterm = require("wezterm")

local config = {}

-- determine operating system
local windows = "x86_64-pc-windows-msvc"
-- local linux = "x86_64-unknown-linux-gnu"
-- local macosSilicon = "aarch64-apple-darwin"
-- local macosIntel = "x86_64-apple-darwin "

-- run powershell if windows is detected
if wezterm.target_triple == windows then
	config.default_prog = { "powershell.exe", "-NoLogo" }
end
