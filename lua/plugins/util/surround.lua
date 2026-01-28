return {
	{
		"tpope/vim-surround",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = { "tpope/vim-repeat" },
	},
	{
		"echasnovski/mini.ai",
		event = { "BufReadPost", "BufNewFile" },
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
