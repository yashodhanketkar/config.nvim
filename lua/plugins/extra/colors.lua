return {
	{
		"norcalli/nvim-colorizer.lua",
		keys = {
			{ "<leader>tc", "<cmd>ColorizerToggle<cr>", desc = "Toggle colorizer" },
		},
	},
	{
		"cameron-wags/rainbow_csv.nvim",
		event = { "BufReadPost", "BufNewFile" },
		config = true,
		ft = {
			"csv",
			"tsv",
			"csv_semicolon",
			"csv_whitespace",
			"csv_pipe",
			"rfc_csv",
			"rfc_semicolon",
		},
		cmd = {
			"RainbowDelim",
			"RainbowDelimSimple",
			"RainbowDelimQuoted",
			"RainbowMultiDelim",
		},
	},
}
