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
				"html",
				"python",
				"rust",
				"typescript",
				"yaml",
				"prisma",
				"go",
				"php",
				"bash",
				"templ",
			},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
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
