return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"vrischmann/tree-sitter-templ",
	},
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
				disable = { "csv" },
			},
			indent = {
				enable = true,
				disable = { "csv" },
			},
			autotag = {
				enable = true,
				enable_rename = true,
				enable_close = true,
				enable_close_on_slash = true,
			},
		})
		vim.filetype.add({
			extension = {
				templ = "templ",
			},
		})
	end,
}
