local M = {}

M.configs = {
	clangd = {
		cmd = { "clangd" },
		filetypes = { "c", "cpp", "objc", "objcpp" },
	},
	rust_analyzer = {
		cmd = { "rust-analyzer" },
		filetypes = { "rust" },
		settings = {
			["rust-analyzer"] = {
				cargo = { allFeatures = true },
				checkOnSave = { command = "clippy" },
				lens = { enable = true },
				diagnostics = { enable = true },
			},
		},
	},
	gopls = {
		cmd = { "gopls", "serve" },
		filetypes = { "go" },
		root_markers = { "go.mod", "go.sum" },
		settings = {
			directoryFilters = {
				"-**/fyne.io/fyne/v2",
				"-**/fyne.io/v2",
			},
		},
	},
	nginxls = {
		cmd = { "nginx-language-server" },
		filetypes = { "nginx" },
		root_markers = { "nginx.conf", ".git" },
	},
	yamlls = {
		cmd = { "yaml-language-server", "--stdio" },
		filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab", "yaml.helm-values" },
		root_markers = { ".git" },
		settings = {
			redhat = { telemetry = { enabled = false } },
			yaml = { format = { enable = true } },
		},
	},
	slint_lsp = {
		cmd = { "slint-lsp" },
		filetypes = { "slint" },
		root_markers = { ".git" },
	},
}

return M
