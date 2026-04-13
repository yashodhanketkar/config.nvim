local M = {}

--- Blink autocompletion configuration
function M.setup_blink()
	require("blink.cmp").setup({
		keymap = { preset = "super-tab" },
		sources = {
			default = { "lazydev", "lsp", "path", "buffer", "snippets" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				},
			},
		},
		fuzzy = {
			implementation = "lua",
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
	})
end

--- Supermaven (AI suggestion) configuration
function M.setup_supermaven()
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

	vim.keymap.set({ "n", "x", "o" }, "<leader>tiau", function()
		require("supermaven-nvim").start()
	end, { desc = "Enable supermaven-nvim" })
	vim.keymap.set({ "n", "x", "o" }, "<leader>tiad", function()
		require("supermaven-nvim").stop()
	end, { desc = "Disable supermaven-nvim" })
	vim.keymap.set({ "n", "x", "o" }, "<leader>tiat", function()
		require("supermaven-nvim").toggle()
	end, { desc = "Toggle supermaven-nvim" })
end

--- Conform and formatters configuration
function M.setup_conform()
	require("conform").setup({
		formatters = {
			kulala = {
				command = "kulala-fmt",
				args = { "format", "$FILENAME" },
				stdin = false,
			},
		},
		formatters_by_ft = {
			c = { "clang-format" },
			cs = { "csharpier" },
			dart = { "dart_format" },
			dockerfile = { "dockerfmt" },
			go = { "goimports", "golines" },
			http = { "kulala" },
			javascript = { "prettier", "eslint_d" },
			javascriptreact = { "prettier", "eslint_d" },
			json = { "prettier" },
			lua = { "stylua" },
			markdown = { "markdownfmt" },
			python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
			rest = { "kulala" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			sql = { "sql_formatter" },
			terraform = { "terraform_fmt" },
			tex = { "tex-fmt" },
			tsx = { "prettier", "eslint_d" },
			typescript = { "prettier", "eslint_d" },
			typescriptreact = { "prettier", "eslint_d" },
			xml = { "xmllint" },
		},
		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
	})
end

return M
