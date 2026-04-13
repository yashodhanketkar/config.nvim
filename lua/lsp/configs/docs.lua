local M = {}

M.configs = {
	luals = {
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		settings = {
			Lua = {
				telemetry = {
					enable = false,
				},
			},
		},
	},
	marksman = {
		filetypes = { "markdown" },
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
}

return M
