local M = {}

M.configs = {
	htmlserver = {
		cmd = { "vscode-html-language-server", "--stdio" },
		filetypes = { "html", "htm", "htmx" },
	},
	cssserver = {
		cmd = { "vscode-css-language-server", "--stdio" },
		filetypes = { "css", "less", "tailwindcss" },
		init_options = {
			provideFormatter = true,
		},
		root_markers = { ".prettierrc" },
		settings = {
			css = { validate = true },
			less = { validate = true },
			scss = { validate = true },
		},
	},
	kulala = {
		cmd = { "kulala-ls", "--stdio" },
		filetypes = { "rest", "http" },
	},
	tsserver = {
		cmd = { "typescript-language-server", "--stdio" },
		init_options = { hostInfo = "neovim" },
		filetypes = {
			"typescript",
			"typescriptreact",
			"tsx",
			"javascript",
			"javascriptreact",
			"jsx",
		},
		root_markers = {
			"tsconfig.json",
			"tsconfig.base.js",
			"package.json",
			"jsconfig.json",
			".git",
		},
	},
}

return M
