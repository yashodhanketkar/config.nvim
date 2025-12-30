local M = {}

M.servers = {
	clangd = {
		cmd = { "clangd" },
		filetypes = { "c", "cpp", "objc", "objcpp" },
	},
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
		init_options = {
			hostInfo = "neovim",
		},
		filetypes = {
			"typescript",
			"typescriptreact",
			"typescript.tsx",
			"javascript",
			"javascriptreact",
			"javascript.jsx",
		},
		root_markers = {
			"tsconfig.json",
			"jsconfig.json",
			"package.json",
			".git",
			"tsconfig.base.js",
		},
		settings = {
			implicitProjectConfiguration = {
				checkJs = true,
			},
		},
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
		settings = {
			pylsp = {
				plugins = {
					pycodestyle = {
						maxLineLength = 120,
					},
					flake8 = {
						maxLineLength = 120,
					},
				},
			},
		},
	},
	jdtls = {
		filetypes = { "java" },
		cmd = { "jdtls" },
		root_markers = { "gradlew", ".git", "mvnw" },
		settings = {
			java = {},
		},
		init_options = {
			bundles = {},
		},
	},
	sqls = {
		cmd = { "sqls" },
		filetypes = { "sql" },
	},
	terraform = {
		cmd = { "terraform-ls", "serve" },
		filetypes = { "terraform", "tf" },
	},
	docker = {
		cmd = { "docker-language-server", "start", "--stdio" },
		filetypes = { "dockerfile", "yaml.docker-compose" },
		root_markers = {
			"Dockerfile",
			"docker-compose.yaml",
			"docker-compose.yml",
			"compose.yaml",
			"compose.yml",
			"docker-bake.json",
			"docker-bake.hcl",
			"docker-bake.override.json",
			"docker-bake.override.hcl",
		},
	},
	dockerls = {
		cmd = { "docker-langserver", "--stdio" },
		filetypes = { "dockerfile" },
		root_markers = { "Dockerfile" },
	},
	intelephense = {
		cmd = { "intelephense", "--stdio" },
		filetypes = { "php" },
		root_markers = { "composer.json", "composer.lock" },
		settings = {
			intelephense = {
				files = {
					maxSize = 1000000,
				},
			},
		},
	},
}

return M
