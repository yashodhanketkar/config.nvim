local M = {}

M.setup_transparent = function()
	require("transparent").setup({
		groups = {
			"Normal",
			"NormalNC",
			"Comment",
			"Constant",
			"Special",
			"Identifier",
			"Statement",
			"PreProc",
			"Type",
			"Underlined",
			"Todo",
			"String",
			"Function",
			"Conditional",
			"Repeat",
			"Operator",
			"Structure",
			"LineNr",
			"NonText",
			"SignColumn",
			"CursorLine",
			"CursorLineNr",
			"StatusLine",
			"StatusLineNC",
			"EndOfBuffer",
		},
		extra_groups = {},
		exclude_groups = {},
		on_clear = function() end,
	})

	vim.keymap.set("n", "<leader>bt", "<CMD>TransparentToggle<CR>", { silent = true, desc = "Toggle transparency" })
end

return M
