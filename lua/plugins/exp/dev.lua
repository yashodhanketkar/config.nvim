local M = {}

--- Flash search configuration
function M.setup_flash()
	local flash = require("flash")
	flash.setup({ modes = { char = { enabled = false } } })

  -- stylua: ignore start
	vim.keymap.set({ "n", "x", "o" }, "<leader>/", function() flash.jump() end, { desc = "Flash search" })
	-- stylua: ignore end
end

--- Lazydev configuration
function M.setup_lazydev()
	require("lazydev").setup({ library = { { path = "${3rd}/luv/library", words = { "vim%.uv" } } } })
end

return M
