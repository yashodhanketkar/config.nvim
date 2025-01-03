return {
	{
		"stevearc/oil.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			default_file_explorer = false,
			view_options = {
				show_hidden = true,
			},
		},
		config = function(_, opts)
			local oil = require("oil")
			oil.setup(opts)
			local function map(lhs, rhs, desc, map_opts)
				vim.keymap.set("n", lhs, rhs, map_opts or { desc = desc })
			end

			map("-", oil.open, "Open parent directory")
			map("<leader>-", oil.open_float, "Open parent directory in floating window")
			map("q", oil.close, "Open parent directory")
		end,
	},
}
