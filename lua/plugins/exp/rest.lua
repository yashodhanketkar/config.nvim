local M = {}

--- Kulala API client configuration
function M.setup_kulala()
	require("kulala").setup({
		global_keymaps = true,
		global_keymaps_prefix = "<leader>R",
		kulala_keymaps_prefix = "",
	})

  -- stylua: ignore start
  vim.keymap.set("n", "<leader>Rs", function() require("kulala").run() end, { desc = "Send request" })
  vim.keymap.set("n", "<leader>Ra", function() require("kulala").run_all() end, { desc = "Send all requests" })
  vim.keymap.set("n", "<leader>Rb", function() require("kulala").scratchpad() end, { desc = "Open scratchpad" })
	-- stylua: ignore end
end

return M
