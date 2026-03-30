vim.api.nvim_create_autocmd("BufRead", {
	once = true,
	callback = function()
		vim.pack.add({
			"https://github.com/tpope/vim-fugitive",
			"https://github.com/lewis6991/gitsigns.nvim",
			"https://github.com/sindrets/diffview.nvim",
		})

		require("gitsigns").setup({
			numhl = true,
			current_line_blame_opts = {
				delay = 200,
			},
		})

		require("diffview").setup({
			view = {
				merge_tool = {
					layout = "diff3_mixed",
				},
			},
		})


    -- stylua: ignore start
    vim.keymap.set("n", "<leader>G", ":Git ", { desc = "Start Git command" })
    vim.keymap.set("n", "<leader>gdo", "<cmd>DiffviewOpen<cr>", { desc = "Git open diff view" })
    vim.keymap.set("n", "<leader>gdc", "<cmd>DiffviewClose<cr>", { desc = "Git close diff view" })
    vim.keymap.set("n", "<leader>gm", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggles git blame" })
    vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>", { desc = "Toggles git sings" })
		-- stylua: ignore end
	end,
})
