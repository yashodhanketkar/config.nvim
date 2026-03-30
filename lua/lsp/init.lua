-- setup LSP related keybindings
require("lsp.keys")
local lsps = require("lsp.servers")

-- root configuration
vim.lsp.config("*", {
	capabilities = {
		textDocument = {
			semanticTokens = {
				multilineTokenSupport = true,
			},
		},
	},
	root_markers = { ".git" },
})

-- calls servers and their configurations
-- enable server after configurations
for server, config in pairs(lsps.servers) do
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
end
