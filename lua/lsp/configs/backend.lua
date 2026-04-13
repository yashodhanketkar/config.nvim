local M = {}

M.configs = {
	bashls = {
		cmd = { "bash-language-server", "start" },
		ignoredRootPaths = { "~" },
		filetypes = { "sh", "zsh", "bash" },
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
	terraform = {
		cmd = { "terraform-ls", "serve" },
		filetypes = { "terraform", "tf" },
	},
	sqls = {
		cmd = { "sqls" },
		filetypes = { "sql" },
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
