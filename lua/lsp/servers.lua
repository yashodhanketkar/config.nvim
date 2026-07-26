local lombok_path = vim.fn.expand("~/.local/share/java/lombok.jar")

--- @type table<string, vim.lsp.Config>
return {
	-- default
	clangd = {},
	dartls = {},
	dockerls = {},
	html = {},
	lua_ls = {},
	marksman = {},
	nginx_language_server = {},
	ruff = {},
	slint_lsp = {},
	sqls = {},
	svelte = {},
	texlab = {},
	-- vtsls = {},
	yamlls = {},

	-- additional customization
	basedpyright = {
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
	bashls = {
		filetypes = { "sh", "zsh", "bash" },
		ignoredRootPaths = { "~" },
	},
	cssls = {
		filetypes = { "css", "less", "scss", "tailwindcss" },
		root_markers = { ".prettierrc", "package.json", ".git" },
		init_options = { provideFormatter = true },
	},
	docker_compose_language_service = {
		filetypes = { "dockerfile", "yaml.docker-compose", "docker-compose.yaml" },
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
	gopls = {
		root_markers = { "go.mod", "go.sum" },
		settings = {
			directoryFilters = {
				"-**/fyne.io/fyne/v2",
				"-**/fyne.io/v2",
			},
		},
	},
	intelephense = {
		root_markers = { "composer.json", "composer.lock" },
		settings = {
			intelephense = { files = { maxSize = 1000000 } },
		},
	},
	jdtls = {
		cmd = { "jdtls", "--jvm-arg=-javaagent:" .. lombok_path },
		init_options = { bundles = {} },
		filetypes = { "java" },
	},
	kulala_ls = { filetypes = { "rest", "http" } },
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {
				cargo = { allFeatures = true },
				checkOnSave = { command = "clippy" },
				lens = { enable = true },
				diagnostics = { enable = true },
			},
		},
	},
	tailwindcss = {
		filetypes = {
			"css",
			"less",
			"scss",
			"html",
			"vue",
			"svelte",
			"astro",
			"markdown",
			"mdx",
			"tsx",
			"jsx",
			"typescript",
			"javascript",
			"javascriptreact",
			"typescriptreact",
			"json",
			"jsonc",
			"yaml",
			"yml",
			"graphql",
			"html",
			"svelte",
		},
		settings = {
			includeLanguages = {
				tsx = "typescriptreact",
				jsx = "javascriptreact",
			},
		},
	},
	terraformls = { filetypes = { "terraform", "tf" } },
	ts_ls = {
		filetypes = { "tsx", "typescript", "typescriptreact", "javascript", "javascriptreact", "jsx" },
		root_markers = {
			"tsconfig.json",
			"tsconfig.base.js",
			"package.json",
			"jsconfig.json",
			".git",
		},
	},
}
