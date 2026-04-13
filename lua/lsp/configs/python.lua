local M = {}

M.configs = {
	ruff = {
		cmd = { "ruff", "server" },
		filetypes = { "python" },
		root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
		settings = {},
	},
	basedpyright = {
		cmd = { "basedpyright-langserver", "--stdio" },
		filetypes = { "python" },
		root_markers = { "pyproject.toml", "requirements.txt", "ruff.toml", ".ruff.toml", ".git" },
		settings = {
			basedpyright = {
				analysis = {
					typeCheckingMode = "standard",
					diagnosticMode = "openFilesOnly",
					autoImportCompletions = true,
					inlayHints = {
						variableTypes = true,
						callArgumentNames = true,
						functionReturnTypes = true,
						genericTypes = true,
					},
				},
			},
		},
	},
}

return M
