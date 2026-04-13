local M = {}

--- Git signs and symbols configuration
function M.setup_gitsings()
	require("gitsigns").setup({
		numhl = true,
		current_line_blame_opts = {
			delay = 200,
		},
	})

	vim.keymap.set("n", "<leader>gm", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggles git blame" })
	vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>", { desc = "Toggles git sings" })
end

--- Git diff and merge conflicts view configuration
function M.setup_diffview()
	require("diffview").setup({
		view = {
			merge_tool = {
				layout = "diff3_mixed",
			},
		},
	})

	vim.keymap.set("n", "<leader>gdo", "<cmd>DiffviewOpen<cr>", { desc = "Git open diff view" })
	vim.keymap.set("n", "<leader>gdc", "<cmd>DiffviewClose<cr>", { desc = "Git close diff view" })
end

--- Git integration/helper configuration
function M.setup_fugitive()
	vim.keymap.set("n", "<leader>G", ":Git ", { desc = "Start Git command" })
end

return M
