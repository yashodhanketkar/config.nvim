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
}

return M
