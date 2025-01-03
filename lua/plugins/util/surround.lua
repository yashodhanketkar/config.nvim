return {
	{
		"tpope/vim-surround",
		event = "VeryLazy",
		dependencies = { "tpope/vim-repeat" },
	},
	{
		"echasnovski/mini.ai",
		event = "VeryLazy",
		branch = "stable",
		config = function()
			require("mini.ai").setup({
				mappings = {
					around_last = "ap",
					inside_last = "ip",
				},
			})
		end,
	},
}
