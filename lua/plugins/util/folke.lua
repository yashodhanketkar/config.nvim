return {
	{ "folke/which-key.nvim", event = "VeryLazy" },
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		init = function()
			require("todo-comments").setup({})
		end,
		keys = {
			{ "<leader>tdf", "<cmd>TodoFzfLua<cr>", desc = "Opens todo list with Lua_Fzf" },
			{ "<leader>tdl", "<cmd>TodoLocList<cr>", desc = "Opens todo in loc list" },
		},
	},
	{
		enabled = true,
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
		opts = { presets = { bottom_search = true, long_message_to_split = true } },
		keys = {
			{ "<leader>nd", "<cmd>NoiceDismiss<cr>", desc = "Dismiss all notifications" },
			{ "<leader>nh", "<cmd>NoiceHistory<cr>", desc = "Show notifications history" },
			{ "<leader>nf", "<cmd>NoiceFzf<cr>", desc = "Show notifications history with Lua_Fzf" },
			{ "<leader>ne", "<cmd>NoiceErrors<cr>", desc = "Show notifications history (Errors)" },
		},
	},
	{
		"folke/snacks.nvim",
		lazy = false,
		opts = {
			dashboard = { enabled = true, example = "files" },
			indent = { enabled = true },
			notifier = { enabled = true },
			scroll = { enabled = true, animate = { duration = { step = 4, total = 24 } } },
		},
	},
}
