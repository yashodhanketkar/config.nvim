return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local status = require("noice").api.status
		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "╲", right = "╱" },
			},
			sections = {
				lualine_c = {
					{ status.command.get, cond = status.command.has },
					{ status.mode.get, cond = status.mode.has },
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
