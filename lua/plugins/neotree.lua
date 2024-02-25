return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "file_opened",
					handler = function(_)
						-- auto close
						require("neo-tree.command").execute({
							action = "close",
						})
					end,
				},
			},
		})
	end,
	keys = {
		{ "<C-n>", ":Neotree filesystem reveal right<cr>", desc = "Open Neotree on right side" },
		{ "<leader>bf", ":Neotree buffers reveal float<cr>", desc = "Shows Neotree buffers" },
	},
}
