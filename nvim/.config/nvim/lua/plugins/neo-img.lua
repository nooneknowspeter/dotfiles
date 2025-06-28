return {
	"skardyy/neo-img",
	enabled = false,
	build = function()
		require("neo-img").install()
	end,
	config = function()
		require("neo-img").setup()
	end,
}
