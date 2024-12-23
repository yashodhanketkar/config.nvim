return {
	{ "tpope/vim-fugitive" },
	{ "sindrets/diffview.nvim" },
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			numhl = true,
			current_line_blame_opts = {
				delay = 200,
			},
		},
	},
}
