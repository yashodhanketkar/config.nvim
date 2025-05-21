return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			go = { "goimports", "golines" },
			javascript = { "prettier" },
			json = { "prettier" },
			lua = { "stylua" },
			markdown = { "markdownfmt" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			sql = { "sql_formatter" },
			tex = { "tex-fmt" },
			typescript = { "prettier" },
		},
		format_on_save = {
			time_out = 500,
			lsp_format = "fallback",
		},
	},
}
