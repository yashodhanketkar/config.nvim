return {
	{
		"stevearc/oil.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			default_file_explorer = false,
			view_options = {
				show_hidden = true,
			},
		},
		keys = {
			{ "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
		},
	},
}
