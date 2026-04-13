local M = {}

--- Colorizer (live color viewer) configuration
function M.setup_colorizer()
	vim.keymap.set("n", "<leader>tc", "<cmd>ColorizerToggle<cr>", { desc = "Toggle colorizer" })
end

--- Rainbow CSV configuration
--- Handles the syntax highlighting, csv related commands and keymaps
function M.setup_rainbow()
	require("rainbow_csv").setup()
	vim.api.nvim_create_autocmd("CmdUndefined", {
		pattern = {
			"RainbowDelim",
			"RainbowDelimSimple",
			"RainbowDelimQuoted",
			"RainbowMultiDelim",
		},
		callback = function(event)
			vim.cmd(event.match)
		end,
	})
end

return M
