local M = {}

--- Autopairs and autotag configuration
function M.setup_autos()
	require("nvim-autopairs").setup()
	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
	local cmp = require("cmp")
	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

	require("nvim-ts-autotag").setup({
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = false,
		},
	})
end

--- Fold configuration
--- Updates internal folds and apply ufo settings
function M.setup_folds()
	vim.o.foldcolumn = "1"
	vim.o.foldlevel = 99
	vim.o.foldlevelstart = 99
	vim.o.foldenable = true

	local ufo = require("ufo")
	vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
	vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })
	ufo.setup()
end

--- Mini.ai configuration
function M.setup_miniai()
	require("mini.ai").setup({
		mappings = {
			around_last = "ap",
			inside_last = "ip",
		},
	})
end

return M
