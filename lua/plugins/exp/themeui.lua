local M = {}

--- ThemeUI (custom theme handler) configuration
function M.setup_themeui()
	require("themeui").setup({
		state = {
			themes = {
				"catppuccin",
				"dracula",
				"everforest",
				"gruvbox",
				"kanagawa",
				"rosepine",
				"tokyonight",
				"vscode",
			},
		},
	})
end

return M
