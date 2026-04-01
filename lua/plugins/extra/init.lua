local specials = require("plugins.extra.specials")
local colors = require("plugins.extra.colors")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "md", "markdown" },
	once = true,
	callback = function()
		vim.pack.add({ { src = "https://github.com/iamcco/markdown-preview.nvim" } })
		specials.setup_markdown_preview()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "bat", "batch" },
	once = true,
	callback = function()
		vim.pack.add({ { src = "https://github.com/aliou/bats.vim" } })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	once = true,
	pattern = {
		"css",
		"jsx",
		"javascript",
		"javascriptreact",
		"tsx",
		"typescript",
		"typescriptreact",
	},
	callback = function()
		vim.pack.add({ { src = "https://github.com/norcalli/nvim-colorizer.lua" } })
		colors.setup_colorizer()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	once = true,
	pattern = {
		"csv",
		"tsv",
		"csv_semicolon",
		"csv_whitespace",
		"csv_pipe",
		"rfc_csv",
		"rfc_semicolon",
	},
	callback = function()
		vim.pack.add({ { src = "https://github.com/cameron-wags/rainbow_csv.nvim" } })
		colors.setup_rainbow()
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		vim.pack.add({ { src = "https://github.com/junegunn/limelight.vim" } })
		specials.setup_limelight()
	end,
})
