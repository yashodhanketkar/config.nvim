local M = {}

--- Lazydev configuration
function M.setup_lazydev()
	require("lazydev").setup({ library = { { path = "${3rd}/luv/library", words = { "vim%.uv" } } } })
end

return M
