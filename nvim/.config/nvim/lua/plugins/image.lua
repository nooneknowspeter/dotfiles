return {
	{
		"3rd/image.nvim",
		enabled = true,
		build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
		config = function()
			require("image").setup({
				backend = "kitty",
				integrations = {
					markdown = {
						only_render_image_at_cursor = true,
						filetypes = { "markdown", "vimwiki", "quarto" },
					},
					html = {
						enabled = false,
					},
				},
				max_width_window_percentage = nil,
				max_height_window_percentage = 50,
				window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
				window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
				editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
				tmux_show_only_in_active_window = true, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
			})
		end,
	},
}
