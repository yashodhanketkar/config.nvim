return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local ensureInstalled = {
				-- core
				"vim",
				"vimdoc",
				-- languages
				"c",
				"cpp",
				"rust",
				"go",
				"java",
				"lua",
				"php",
				"python",
				"javascript",
				-- web development
				"typescript",
				"tsx",
				"html",
				"css",
				"http",
				-- ORM, DB, and datatypes
				"prisma",
				"query",
				"sql",
				"xml",
				"json",
				"toml",
				"yaml",
				"markdown",
				-- os related
				"bash",
				"hyprlang",
				"kitty",
				"zsh",
				-- server configuration
				"make",
				"nginx",
				"rasi",
				"terraform",
			}

			local parser_installed = require("nvim-treesitter.config").get_installed()
			local parser_toinstall = vim.iter(ensureInstalled)
				:filter(function(parser)
					return not vim.tbl_contains(parser_installed, parser)
				end)
				:totable()

			local ts = require("nvim-treesitter")
			ts.install(parser_toinstall, { max_jobs = 8 }):wait(5000)

			for _, parser in ipairs(ensureInstalled) do
				vim.api.nvim_create_autocmd("FileType", {
					pattern = { parser },
					callback = function()
						vim.treesitter.start()
						vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end,
				})
			end
		end,
	},
	{
		enabled = false,
		"louriest/themeui.nvim",
		branch = "0.2.0",
		dependencies = {
			"MunifTanjim/nui.nvim",
			{ "Mofiqul/dracula.nvim" },
			{ "catppuccin/nvim", name = "catppuccin" },
			{ "folke/tokyonight.nvim", opts = { terminal_colors = false } },
			{ "ellisonleao/gruvbox.nvim", opts = { terminal_colors = true } },
			{ "rebelot/kanagawa.nvim", opts = { terminal_colors = true } },
			{ "rose-pine/neovim", name = "rose-pine", opts = { variant = "auto", dark_variant = "moon" } },
			{ "Mofiqul/vscode.nvim", name = "vscode" },
			{ "neanias/everforest-nvim", name = "everforest" },
		},
		config = function()
			require("themeui").setup({
				state = {
					themes = {
						"dracula",
						"gruvbox",
						"kanagawa",
						"catppuccin",
						"tokyonight",
						"rose-pine",
						"vscode",
						"everforest",
					},
				},
			})
		end,
	},
}
