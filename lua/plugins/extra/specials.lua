return {
	{
		"aliou/bats.vim",
		event = { "BufReadPost", "BufNewFile" },
	},
	{
		"junegunn/limelight.vim",
		event = { "BufReadPost", "BufNewFile" },
		keys = {
			{ "<leader>ll", "<cmd>Limelight!!<cr>", desc = "Toggle limelight" },
		},
		{
			"iamcco/markdown-preview.nvim",
			event = { "BufReadPost", "BufNewFile" },
			cmd = {
				"MarkdownPreviewToggle",
				"MarkdownPreview",
				"MarkdownPreviewStop",
			},
			-- build = function()
			-- 	vim.fn["mkdp#util#install"]()
			-- end,
			build = "cd app && npm install",
			init = function()
				vim.g.mkdp_filetypes = {
					"markdown",
				}
			end,
			ft = {
				"markdown",
			},
			keys = {
				{ "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
			},
		},
	},
}
