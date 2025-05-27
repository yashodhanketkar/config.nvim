local M = {}

M.serevers = {
	luals = {
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
	},
	bashls = {
		cmd = { "bash-language-server", "start" },
		ignoredRootPaths = { "~" },
		filetypes = { "sh", "zsh", "bash" },
	},
	gopls = {
		cmd = { "gopls", "serve" },
		filetypes = { "go" },
	},
	marksman = {
		filetypes = { "markdown" },
	},
	tsserver = {
		cmd = { "typescript-language-server", "--stdio" },
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	},
	htmlserver = {
		cmd = { "vscode-html-language-server", "--stdio" },
		filetypes = { "html", "htm", "htmx" },
	},
	cssserver = {
		cmd = { "vscode-css-language-server", "--stdio" },
		filetypes = { "css", "less", "tailwindcss" },
	},
	texlab = {
		cmd = { "texlab" },
		filetypes = { "tex", "plaintex", "bib" },
		root_markers = { ".latexmkrc", "latexmkrc", ".texlabroot", "texlabroot", "Tectonic.toml" },
		settings = {
			texlab = {
				bibtexFormatter = "texlab",
				build = {
					args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
					executable = "latexmk",
					forwardSearchAfter = false,
					onSave = false,
				},
				chktex = {
					onEdit = false,
					onOpenAndSave = false,
				},
				diagnosticsDelay = 300,
				formatterLineLength = 80,
				forwardSearch = {
					args = {},
				},
				latexFormatter = "latexindent",
				latexindent = {
					modifyLineBreaks = false,
				},
			},
		},
	},
	pylsp = {
		cmd = { "pylsp" },
		filetypes = { "python" },
		root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile" },
	},
}

return M
