return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "╲", right = "╱" },
			},
			sections = {
				lualine_c = {
					{
						require("noice").api.status.command.get,
						cond = require("noice").api.status.command.has,
					},
					{
						require("noice").api.status.mode.get,
						cond = require("noice").api.status.mode.has,
					},
				},
				lualine_y = {
					{ "location", separator = "╱", padding = 1 },
					{ "progress", padding = 1 },
				},
				lualine_z = { { "datetime", style = "  %H:%M:%S" } },
			},
		})
	end,
}
