return {
	"saghen/blink.cmp",
	lazy = false,
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
				draw = { columns = { { "label", gap = 1, "label_description" }, { "kind_icon", gap = 1, "kind" } } },
			},
		},
	},
	opts_extend = { "sources.default" },
}
