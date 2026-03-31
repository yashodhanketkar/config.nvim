local M = {}

-- 		"https://github.com/iamcco/markdown-preview.nvim",
-- 	vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Markdown Preview" })
-- end,

--- Limelight configuration
function M.setup_limelight()
	vim.keymap.set("n", "<leader>ll", "<cmd>Limelight!!<cr>", { desc = "Toggle limelight" })
	vim.keymap.set("n", "<leader>le", ":Limelight 0.", { desc = "Limelight command" })
	vim.keymap.set("n", "<leader>ld", "<cmd>Limelight!<cr>", { desc = "Disable limelight" })
end

return M
