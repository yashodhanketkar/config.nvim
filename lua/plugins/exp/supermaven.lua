return {
	{
		-- enabled: Trying out for few projects
		enabled = true,
		"supermaven-inc/supermaven-nvim",
		event = "VeryLazy",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<Right>",
					clear_suggestion = "<Left>",
					accept_word = "<C-j>",
				},
				color = {
					suggestion_color = "#ffffff",
					cterm = 244,
				},
				disable_inline_completion = false,
				log_level = "info",
				disable_keymaps = false,
			})
		end,
		keys = {
			{ "<leader>tiau", "<Cmd>SupermavenStart<CR>", desc = "Enable supermaven-nvim" },
			{ "<leader>tiad", "<Cmd>SupermavenStop<CR>", desc = "Disable supermaven-nvim" },
			{ "<leader>tiat", "<Cmd>SupermavenToggle<CR>", desc = "Toggle supermaven-nvim" },
		},
	},
}
