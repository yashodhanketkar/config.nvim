vim.pack.add({
	{ src = vim.fn.expand("~/Projects/themeui") },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	{ src = "https://github.com/Mofiqul/dracula.nvim", name = "dracula" },
	{ src = "https://github.com/neanias/everforest-nvim", name = "everforest" },
	{ src = "https://github.com/ellisonleao/gruvbox.nvim", name = "gruvbox" },
	{ src = "https://github.com/rebelot/kanagawa.nvim", name = "kanagawa" },
	{ src = "https://github.com/rose-pine/neovim", name = "rosepine" },
	{ src = "https://github.com/folke/tokyonight.nvim", name = "tokyonight" },
	{ src = "https://github.com/Mofiqul/vscode.nvim", name = "vscode" },
})

vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		require("themeui").setup({
			state = {
				themes = {
					"catppuccin",
					"dracula",
					"everforest",
					"gruvbox",
					"kanagawa",
					"rosepine",
					"tokyonight",
					"vscode",
				},
			},
		})
	end,
})
