local function location()
	local line = vim.fn.line(".")
	local col = vim.fn.charcol(".")
	return string.format(" %2d,%-2d", line, col)
end

return {
	{ "MunifTanjim/nui.nvim", event = "VeryLazy" },
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		config = function()
			local command = require("noice").api.status.command
			local mode = require("noice").api.status.mode
			local lualine = require("lualine")

			lualine.setup({
				options = {
					section_separators = { left = "", right = "" },
					component_separators = { left = "╲", right = "╱" },
					disabled_filetypes = {
						"neo-tree",
						"netrw",
						"oil",
					},
				},
				sections = {
					lualine_c = { { mode.get, cond = mode.has }, { command.get, cond = command.has } },
					lualine_x = {
						{ "fileformat", separator = "" },
						{ "filename" },
						{ "filetype" },
					},
					lualine_y = {
						{ location },
					},
					lualine_z = { { "datetime", style = "  %H:%M:%S" } },
				},
				inactive_sections = {
					lualine_c = {
						{ "fileformat", separator = "" },
						{ "hostname", separator = "" },
						{ "filename" },
					},
					lualine_x = { { "datetime", style = "%H:%M" } },
					lualine_y = { { location } },
				},
			})
		end,
	},
}
