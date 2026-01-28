return {
	{ "tpope/vim-commentary", event = { "BufReadPost", "BufNewFile" } },
	{
		"saghen/blink.cmp",
		event = { "BufReadPost", "BufNewFile" },
		lazy = false,
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "v0.*",
		opts = {
			keymap = { preset = "super-tab" },
			sources = {
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						score_offset = 100,
					},
				},
			},
			appearance = { use_nvim_cmp_as_default = true, nerd_font_variant = "mono" },
			completion = {
				documentation = { auto_show = true, auto_show_delay_ms = 500 },
				menu = {
					draw = {
						columns = {
							{ "kind_icon", "label", "kind", gap = 1 },
						},
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
	{
		"supermaven-inc/supermaven-nvim",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<C-l>",
					accept_word = "<C-j>",
					clear_suggestion = "<C-h>",
				},
				color = {
					suggestion_color = "#ffffff",
					cterm = 244,
				},
				disable_inline_completion = false,
				log_level = "info",
				disable_keymaps = false,
			})
		end,
		keys = {
			{ "<leader>tiau", "<Cmd>SupermavenStart<CR>", desc = "Enable supermaven-nvim" },
			{ "<leader>tiad", "<Cmd>SupermavenStop<CR>", desc = "Disable supermaven-nvim" },
			{ "<leader>tiat", "<Cmd>SupermavenToggle<CR>", desc = "Toggle supermaven-nvim" },
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			formatters_by_ft = {
				c = { "clang-format" },
				cs = { "csharpier" },
				dart = { "dart_format" },
				dockerfile = { "dockerfmt" },
				go = { "goimports", "golines" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				json = { "prettier" },
				lua = { "stylua" },
				markdown = { "markdownfmt" },
				python = { "isort", "black" },
				rust = { "rustfmt" },
				sql = { "sql_formatter" },
				tex = { "tex-fmt" },
				terraform = { "terraform_fmt" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				xml = { "xmllint" },
			},
			format_on_save = {
				time_out = 500,
				lsp_format = "fallback",
			},
		},
	},
}
