return {
	{ "tpope/vim-commentary", event = "VeryLazy" },
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"vrischmann/tree-sitter-templ",
		},
		event = "VeryLazy",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"elixir",
					"heex",
					"javascript",
					"typescript",
					"html",
					"python",
					"rust",
					"yaml",
					"prisma",
					"go",
					"php",
					"bash",
					"templ",
					"tsx",
				},
				sync_install = false,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
			vim.filetype.add({
				extension = {
					templ = "templ",
				},
			})
		end,
	},
	{
		"saghen/blink.cmp",
		-- lazy = false,
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "v0.*",
		opts = {
			keymap = { preset = "super-tab" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
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
}
