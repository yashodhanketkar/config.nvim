return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			terminal_colors = true, -- add neovim terminal colors
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
		})
	end,
}
