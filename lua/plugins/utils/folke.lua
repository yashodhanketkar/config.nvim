local M = {}

--- Noice configuration
function M.setup_noice()
	require("noice").setup({ presets = { bottom_search = true, long_message_to_split = true } })
	vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<cr>", { desc = "Dismiss all notifications" })
	vim.keymap.set("n", "<leader>nh", "<cmd>NoiceHistory<cr>", { desc = "Show notifications history" })
	vim.keymap.set("n", "<leader>nf", "<cmd>NoiceFzf<cr>", { desc = "Show notifications history with Lua_Fzf" })
	vim.keymap.set("n", "<leader>ne", "<cmd>NoiceErrors<cr>", { desc = "Show notifications history (Errors)" })
end

--- Snacks configuration
function M.setup_snacks()
	require("snacks").setup({
		dashboard = { enabled = true, example = "startify" },
		indent = { enabled = true },
		notifier = { enabled = true },
		scroll = { enabled = true, animate = { duration = { step = 4, total = 24 } } },
		image = { enabled = false },
	})
end

--- Todo list configuration
function M.setup_todo()
	vim.keymap.set("n", "<leader>tdf", "<cmd>TodoFzfLua<cr>", { desc = "Opens todo list with Lua_Fzf" })
	vim.keymap.set("n", "<leader>tdl", "<cmd>TodoLocList<cr>", { desc = "Opens todo list in loc list" })
end

return M
