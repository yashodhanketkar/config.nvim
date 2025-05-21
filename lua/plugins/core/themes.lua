return {
	{
		enabled = true,
		"louriest/themeui.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			{ "Mofiqul/dracula.nvim" },
			{ "catppuccin/nvim", name = "catppuccin" },
			{ "folke/tokyonight.nvim", opts = { terminal_colors = false } },
			{ "ellisonleao/gruvbox.nvim", opts = { terminal_colors = true } },
			{ "rebelot/kanagawa.nvim", opts = { terminal_colors = true } },
			{ "rose-pine/neovim", name = "rose-pine", opts = { variant = "auto", dark_variant = "moon" } },
			{ "Mofiqul/vscode.nvim", name = "vscode" },
		},
		config = function()
			require("themeui").setup({
				themes = {
					"dracula",
					"gruvbox",
					"kanagawa",
					"catppuccin",
					"tokyonight",
					"rose-pine",
					"vscode",
				},
			})
		end,
	},
}
