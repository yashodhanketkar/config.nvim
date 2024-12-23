return {
	{
		"tpope/vim-surround",
		dependencies = { "tpope/vim-repeat" },
	},
	{
		"echasnovski/mini.ai",
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
