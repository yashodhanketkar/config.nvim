local M = {}

M.configs = {
	dartls = {
		cmd = { "dart", "language-server", "--protocol=lsp" },
		filetypes = { "dart" },
		init_options = {
			closingLabels = true,
			flutterOutline = true,
			onlyAnalyzeProjectsWithOpenFiles = true,
			outline = true,
			suggestFromUnimportedLibraries = true,
		},
		root_markers = { "pubspec.yaml" },
		settings = {
			dart = {
				completeFunctionCalls = true,
				showTodos = true,
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
}

return M
