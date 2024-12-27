return {
	-- disabled: Trying out for few projects
	enabled = false,
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	init = function()
		require("bufferline").setup({})
	end,
	keys = {
		{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Pin buffer" },
		{ "<leader>bD", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
		{ "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete right buffers" },
		{ "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete left buffers" },
		{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Go to previous buffer" },
		{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Go to next buffer" },
		{ "[[", "<cmd>BufferLineCyclePrev<cr>", desc = "Go to previous buffer (cyclic)" },
		{ "]]", "<cmd>BufferLineCycleNext<cr>", desc = "Go to next buffer (cyclic)" },
		{ "<leader>[", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer backward" },
		{ "<leader>]", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer forward" },
	},
}
