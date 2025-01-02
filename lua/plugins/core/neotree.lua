return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	init = function()
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
			window = {
				position = "left",
			},
		})
	end,
	keys = {
		{ "<C-n>", "<cmd>Neotree filesystem reveal left<cr>", desc = "Open Neotree on left" },
		{ "<leader>bf", "<cmd>Neotree buffers reveal float<cr>", desc = "Shows Neotree buffers" },
	},
}
