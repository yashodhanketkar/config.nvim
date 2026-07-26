-- setup LSP related keybindings
require("lsp.keys")
local servers = require("lsp.servers")

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.pack.add({
			"https://github.com/neovim/nvim-lspconfig",
		})
	end,
})

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

-- setup lsp servers
for server, config in pairs(servers) do
	if next(config) ~= nil then
		vim.lsp.config(server, config)
	end

	vim.lsp.enable(server)
end

-- handles lsp start docker-compose.yaml file
vim.api.nvim_create_autocmd("BufReadPre", {
	pattern = "docker-compose.yaml",
	callback = function()
		vim.lsp.start(servers.docker_compose_language_service)
	end,
})
