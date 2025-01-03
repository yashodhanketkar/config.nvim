return {
	{ "tpope/vim-fugitive", event = "VeryLazy" },
	{ "sindrets/diffview.nvim", event = "VeryLazy" },
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
		opts = {
			numhl = true,
			current_line_blame_opts = {
				delay = 200,
			},
		},
	},
}
