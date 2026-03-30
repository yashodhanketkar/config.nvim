vim.pack.add({ { src = "https://github.com/norcalli/nvim-colorizer.lua" } })

require("colorizer").setup()

vim.keymap.set("n", "<leader>tc", "<cmd>ColorizerToggle<cr>", {
	desc = "Toggle colorizer",
})

local rainbow_loaded = false

local function load_rainbow()
	if rainbow_loaded then
		return
	end
	rainbow_loaded = true

	vim.pack.add({ { src = "https://github.com/cameron-wags/rainbow_csv.nvim" } })

	require("rainbow_csv").setup()
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"csv",
		"tsv",
		"csv_semicolon",
		"csv_whitespace",
		"csv_pipe",
		"rfc_csv",
		"rfc_semicolon",
	},
	callback = load_rainbow,
})

vim.api.nvim_create_autocmd("CmdUndefined", {
	pattern = {
		"RainbowDelim",
		"RainbowDelimSimple",
		"RainbowDelimQuoted",
		"RainbowMultiDelim",
	},
	callback = function(event)
		load_rainbow()
		vim.cmd(event.match)
	end,
})
