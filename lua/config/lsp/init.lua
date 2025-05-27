local function configure_servers()
	local lsps = require("config.lsp.servers").serevers

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
	for server, config in pairs(lsps) do
		vim.lsp.config(server, config)
		vim.lsp.enable(server)
	end
end

local function setup_lsp()
	-- setup LSP related keybindings
	require("config.lsp.keys").setup()
	configure_servers()
end

return {
	setup = setup_lsp,
}
