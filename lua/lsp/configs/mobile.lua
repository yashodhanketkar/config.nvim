local M = {}

local lombok_path = vim.fn.expand("~/.local/share/java/lombok.jar")

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
		cmd = {
			"jdtls",
			"--jvm-arg=-javaagent:" .. lombok_path,
		},
		filetypes = { "java" },
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
