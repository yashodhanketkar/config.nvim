return {
	"lewis6991/gitsigns.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local gitsigns = require("gitsigns")
		gitsigns.setup({
			numhl = true,
			current_line_blame_opts = {
				delay = 200,
			},
		})
		local function map(lhs, rhs, opts)
			vim.keymap.set("n", lhs, rhs, opts or {})
		end
		map("<leader>gm", function()
			gitsigns.toggle_current_line_blame()
		end)
		map("<leader>gs", function()
			gitsigns.toggle_signs()
		end)
	end,
}
