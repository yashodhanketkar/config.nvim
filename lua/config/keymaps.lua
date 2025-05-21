local function setup_keymaps()
  -- stylua: ignore start
	vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save current buffer" })
	vim.keymap.set("n", "<leader>q", "<cmd>wq<cr>", { desc = "Save and close current buffer" })
	vim.keymap.set("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Force close current buffer" })
	vim.keymap.set("n", "<leader>v", "<c-w>v", { desc = "Split current buffer vertically" })
	vim.keymap.set("n", "<leader>s", "<c-w>s", { desc = "Split current buffer horizontally" })
	vim.keymap.set("n", "<c-j>", "<c-w>j", { desc = "Move to cursor to below buffer" })
	vim.keymap.set("n", "<c-k>", "<c-w>k", { desc = "Move to cursor to above buffer" })
	vim.keymap.set("n", "<c-h>", "<c-w>h", { desc = "Move to cursor to left buffer" })
	vim.keymap.set("n", "<c-l>", "<c-w>l", { desc = "Move to cursor to right buffer" })
	vim.keymap.set("n", "<leader>G", ":Git ", { desc = "Start Git command" })
	vim.keymap.set("n", "<leader><leader>n", "<cmd>noh<cr>", { desc = "Clear text highlights" })
	vim.keymap.set("n", "<leader><leader>wk", "<cmd>WhichKey<cr>", { desc = "Run WhichKey command" })
	vim.keymap.set("n", "<leader>cl", "<cmd>Lazy<cr>", { desc = "Open Lazy popup" })
	vim.keymap.set("n", "<leader>cm", "<cmd>Mason<cr>", { desc = "Open Mason popup" })
	vim.keymap.set("n", "<leader>gdo", "<cmd>DiffviewOpen<cr>", { desc = "Git open diff view" })
	vim.keymap.set("n", "<leader>gdc", "<cmd>DiffviewClose<cr>", { desc = "Git close diff view" })
	vim.keymap.set("n", "<leader>gm", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggles git blame" })
	vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>", { desc = "Toggles git sings" })
	vim.keymap.set("n", "ycc", "yygccp", { remap = true, desc = "Copy current line below and comment out original line", })
	-- stylua: ignore end

	-- dev
	vim.keymap.set("n", "<leader>lr", ":Lazy reload ", { desc = "Start Lazy reload command" })
end

return {
	setup = setup_keymaps,
}
