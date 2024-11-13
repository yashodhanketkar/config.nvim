return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "╲", right = "╱" },
			},
			sections = {
				lualine_y = {
					{
						"datetime",
						style = "%H:%M",
					},
				},
			},
		})
	end,
}
