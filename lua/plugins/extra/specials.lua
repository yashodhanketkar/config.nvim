vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	once = true,
	callback = function()
		vim.pack.add({
			"https://github.com/aliou/bats.vim",
			"https://github.com/junegunn/limelight.vim",
		})

		vim.keymap.set("n", "<leader>ll", "<cmd>Limelight!!<cr>", { desc = "Toggle limelight" })
	end,
})

-- 		"https://github.com/iamcco/markdown-preview.nvim",
-- 	vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Markdown Preview" })
-- end,
