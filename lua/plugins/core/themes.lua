return {
	{
		"Mofiqul/dracula.nvim",
		init = function()
			require("dracula").setup()
			vim.cmd("colorscheme dracula")
		end,
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			terminal_colors = false,
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			terminal_colors = true,
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = false,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			inverse = false,
		},
	},
	{
		"rebelot/kanagawa.nvim",
		opts = {
			terminal_colors = true,
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = false,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
		},
	},
}
