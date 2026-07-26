vim.pack.add({ { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" } })

local ensure_installed = {
	-- core
	"vim",
	"vimdoc",
	-- languages
	"c",
	"cpp",
	"rust",
	"go",
	"java",
	"jsdoc",
	"lua",
	"php",
	"python",
	"javascript",
	"toml",
	"yuck",
	-- web development
	"css",
	"html",
	"http",
	"svelte",
	"tsx",
	"typescript",
	-- ORM, DB, and datatypes
	"json",
	"markdown",
	"prisma",
	"query",
	"sql",
	"toml",
	"xml",
	"yaml",
	-- os related
	"bash",
	"hyprlang",
	"kitty",
	"slint",
	"zsh",
	-- server configuration
	"make",
	"nginx",
	"rasi",
	"terraform",
}

local ts = require("nvim-treesitter")
local parser_installed = require("nvim-treesitter.config").get_installed()
local parser_toinstall = vim.iter(ensure_installed)
	:filter(function(parser)
		return not vim.tbl_contains(parser_installed, parser)
	end)
	:totable()

ts.install(parser_toinstall, { max_jobs = 8 }):wait(5000)

vim.api.nvim_create_autocmd("FileType", {
	pattern = ensure_installed,
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and kind == "update" then
			if not ev.data.active then
				vim.cmd.packadd("nvim-treesitter")
			end
			vim.cmd("TSUpdate")
		end
	end,
})
