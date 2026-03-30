local function setup_blink()
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

local function setup_supermaven()
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

local function setup_conform()
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
			javascript = { "prettier", "eslint_d" },
			javascriptreact = { "prettier", "eslint_d" },
			json = { "prettier", "eslint_d" },
			lua = { "stylua" },
			markdown = { "markdownfmt" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			sql = { "sql_formatter" },
			tex = { "tex-fmt" },
			terraform = { "terraform_fmt" },
			tsx = { "prettier", "eslint_d" },
			typescript = { "prettier", "eslint_d" },
			typescriptreact = { "prettier", "eslint_d" },
			xml = { "xmllint" },
			rest = { "kulala" },
			http = { "kulala" },
		},
		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
	})
end

vim.api.nvim_create_autocmd("BufRead", {
	once = true,
	callback = function()
		vim.pack.add({
			{ src = "https://github.com/rafamadriz/friendly-snippets" },
			{ src = "https://github.com/saghen/blink.cmp", version = "1.*" },
			{ src = "https://github.com/supermaven-inc/supermaven-nvim" },
			{ src = "https://github.com/stevearc/conform.nvim" },
		})

		setup_blink()
		setup_supermaven()
		setup_conform()
	end,
})
