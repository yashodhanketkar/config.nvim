return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			go = { "goimports", "golines" },
			javascript = { "prettier" },
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			json = { "prettier" },
			typescript = { "prettier" },
		},
		format_on_save = {
			time_out = 500,
			lsp_format = "fallback",
		},
	},
}
