local dev = require("plugins.exp.dev")
local rest = require("plugins.exp.rest")
local themeui = require("plugins.exp.themeui")

vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.test" },
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

require("mini.test").setup()

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	once = true,
	callback = function()
		vim.pack.add({
			{ src = "https://github.com/milisims/nvim-luaref" },
			{ src = "https://github.com/folke/lua-dev.nvim" },
			{ src = "https://github.com/folke/lazydev.nvim" },
			{ src = "https://github.com/folke/flash.nvim" },
			{ src = "https://github.com/chentoast/marks.nvim" },
		})

		dev.setup_flash()
		dev.setup_lazydev()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "rest", "http" },
	once = true,
	callback = function()
		vim.pack.add({ { src = "https://github.com/mistweaverco/kulala.nvim", name = "kulala" } })
		rest.setup_kulala()
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = themeui.setup_themeui,
})
