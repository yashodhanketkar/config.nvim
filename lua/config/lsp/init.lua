local function configure_servers()
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

	vim.lsp.config("luals", {
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim", "require" },
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
				},
				telemetry = {
					enable = false,
				},
				runtime = {
					version = "LuaJIT",
				},
			},
		},
	})

	vim.lsp.config("bashls", {
		cmd = { "bash-language-server", "start" },
		ignoredRootPaths = { "~" },
	})

	vim.lsp.config("gopls", {
		cmd = { "gopls", "serve" },
		filetypes = { "go" },
	})
end

local function setup_lsp()
	require("config.lsp.keys").setup()
	configure_servers()
	vim.lsp.enable({ "bashls", "gopls", "luals" })
end

return {
	setup = setup_lsp,
}
