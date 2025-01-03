return {
	"iamcco/markdown-preview.nvim",
	event = "VeryLazy",
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
}
