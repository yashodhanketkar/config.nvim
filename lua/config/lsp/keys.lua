return {
  -- stylua: ignore
	setup = function()
		vim.keymap.set("n", "gR", "<cmd>FzfLua lsp_references<CR>", { desc = "Show LSP references" })
		vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { desc = "Go to declaration" })
		vim.keymap.set("n", "gf", "<cmd>FzfLua lsp_definitions<CR>", { desc = "Show LSP definitions" })
		vim.keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", { desc = "Show LSP implementations" })
		vim.keymap.set("n", "gt", "<cmd>FzfLua lsp_typedefs<CR>", { desc = "Show LSP type definitions" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "See available code actions" })
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Smart rename" })
		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation for what is under cursor" })
		vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Go to previous diagnostic" })
		vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Go to next diagnostic" })
		vim.keymap.set( "n", "<leader>D", "<cmd>FzfLua diagnostics_workspace bufnr=0<CR>", { desc = "Show buffer diagnostics" })
	end,
}
